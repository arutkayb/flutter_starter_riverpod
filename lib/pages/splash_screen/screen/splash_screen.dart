import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter_riverpod/core/state/view_state.dart';
import 'package:flutter_starter_riverpod/core/style/custom_style_color.dart';
import 'package:flutter_starter_riverpod/core/widget/custom_text.dart';
import 'package:flutter_starter_riverpod/data/analytics/analytics_service.dart';
import 'package:flutter_starter_riverpod/pages/splash_screen/viewmodel/splash_screen_viewmodel.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenScreenState();
}

class _SplashScreenScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(analyticsServiceProvider).logScreenVisit('splash_screen');

      ref.read(splashScreenViewmodelProvider.notifier).initialize();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(splashScreenViewmodelProvider);

    return Scaffold(
      backgroundColor: CustomStyleColor.surface,
      body: SafeArea(
        child: Center(
          child: switch (state.viewState) {
            ViewStateLoading() => CircularProgressIndicator(
                color: CustomStyleColor.primary,
              ),
            ViewStateError() => CustomText.h1(
                'generic_error'.tr(),
                textAlign: TextAlign.center,
              ),
            ViewStateIdle() => CustomText.h1(
                'initialized_successfully'.tr(),
                textAlign: TextAlign.center,
              ),
          },
        ),
      ),
    );
  }
}
