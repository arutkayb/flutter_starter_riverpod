import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter_riverpod/pages/home/controller/counter_controller.dart';
import 'package:flutter_starter_riverpod/service_locator.dart';
import 'package:flutter_starter_riverpod/pages/home/controller/home_screen_controller.dart';
import 'package:flutter_starter_riverpod/pages/home/widget/custom_button.dart';

class HomeScreen extends ConsumerStatefulWidget {
  final String screenName = 'home_screen';

  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();

    ref.read(mockAnalyticsServiceProvider).logScreenVisit(widget.screenName);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeScreenControllerProvider);

    return SafeArea(
      child: Scaffold(
        body: Builder(
          builder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  state.viewState.map(
                    error: (value) => DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.red),
                      child: Text(state.error?.message ?? 'Generic error'),
                    ),
                    loading: (value) => const CircularProgressIndicator(
                      color: Colors.red,
                    ),
                    loaded: (value) => Text(
                      'Welcome to Flutter Starter Riverpod!'
                      '\nOperations counter: ${ref.watch(counterCountProvider).toString()}'
                      '${state.user?.id == null ? '' : "\nNew user id: ${state.user?.id}"}',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  CustomButton(
                      onPress: () {
                        ref.read(mockAnalyticsServiceProvider).logButtonClick(
                              widget.screenName,
                              'get_user',
                            );

                        ref
                            .read(homeScreenControllerProvider.notifier)
                            .getUser();
                      },
                      text: 'Get User'),
                  CustomButton(
                      onPress: () {
                        ref.read(mockAnalyticsServiceProvider).logButtonClick(
                              widget.screenName,
                              'save_user',
                            );

                        ref
                            .read(homeScreenControllerProvider.notifier)
                            .saveUser('${ref.watch(counterCountProvider)}');
                      },
                      text: 'Save User'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
