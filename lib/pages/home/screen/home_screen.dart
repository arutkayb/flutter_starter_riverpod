import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter_riverpod/pages/home/viewmodel/counter_viewmodel.dart';
import 'package:flutter_starter_riverpod/pages/home/viewmodel/home_screen_viewmodel.dart';
import 'package:flutter_starter_riverpod/pages/home/widget/custom_button.dart';
import 'package:flutter_starter_riverpod/service_locator.dart';

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

    ref.read(analyticsServiceProvider).logScreenVisit(widget.screenName);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeScreenViewModelProvider);

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
                    idle: (value) => Text(
                      'Welcome to Flutter Starter Riverpod!'
                      '\nOperations counter: ${ref.watch(counterCountProvider).toString()}'
                      '${state.user?.id == null ? '' : "\nNew user id: ${state.user?.id}"}',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  CustomButton(
                      onPress: () {
                        ref.read(analyticsServiceProvider).logButtonClick(
                              widget.screenName,
                              'get_user',
                            );

                        ref
                            .read(homeScreenViewModelProvider.notifier)
                            .getUser();
                      },
                      text: 'Get User'),
                  CustomButton(
                      onPress: () {
                        ref.read(analyticsServiceProvider).logButtonClick(
                              widget.screenName,
                              'save_user',
                            );

                        ref
                            .read(homeScreenViewModelProvider.notifier)
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
