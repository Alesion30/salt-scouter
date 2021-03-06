import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:salt_scouter/ui/theme/app_text_theme.dart';
import 'package:salt_scouter/ui/theme/app_theme.dart';
import 'package:sizer/sizer.dart';

import 'scouter_view_model.dart';

/// スカウター画面
class ScouterPage extends HookConsumerWidget {
  const ScouterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(scouterViewModelProvider);
    final viewModel = ref.watch(scouterViewModelProvider.notifier);

    return state.when(
      data: (data) {
        final controller = data.controller!;
        final aspectRatio = controller.value.aspectRatio;

        return Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100.w / aspectRatio,
                  width: 100.w,
                  child: Stack(
                    children: [
                      // カメラ
                      AspectRatio(
                        aspectRatio: aspectRatio,
                        child: CameraPreview(data.controller!),
                      ),
                      // 背景色
                      Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: theme.appColors.scouter,
                          ),
                        ),
                      ),
                      // 塩分量
                      Positioned(
                        top: 5.0,
                        right: 15.0,
                        child: Text(
                          "SALINITY\n1.2g",
                          textAlign: TextAlign.right,
                          style: theme.textTheme.h50
                              .bold()
                              .copyWith(color: theme.appColors.onScouter),
                        ),
                      ),
                      // 認識結果
                      Positioned(
                        bottom: 10.0,
                        left: 15.0,
                        child: Text(
                          "potato",
                          textAlign: TextAlign.right,
                          style: theme.textTheme.h60
                              .bold()
                              .copyWith(color: theme.appColors.onScouter),
                        ),
                      ),
                      // 円
                      Center(
                        child: Container(
                          width: 50.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: theme.appColors.onScouter,
                              width: 7.0,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // ボタン
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  child: !data.isPause
                      ? ElevatedButton(
                          onPressed: viewModel.pause,
                          style: ElevatedButton.styleFrom(
                            primary: theme.appColors.primary,
                            onPrimary: theme.appColors.onPrimary,
                          ),
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 15.0,
                            ),
                            child: Text(
                              'スキャン',
                              style: theme.textTheme.h40.bold(),
                            ),
                          ),
                        )
                      : ElevatedButton(
                          onPressed: viewModel.resume,
                          style: ElevatedButton.styleFrom(
                            primary: theme.appColors.secondary,
                            onPrimary: theme.appColors.onSecondary,
                          ),
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 15.0,
                            ),
                            child: Text(
                              '再開',
                              style: theme.textTheme.h40.bold(),
                            ),
                          ),
                        ),
                ),
              ],
            ),
          ),
        );
      },
      error: (e, msg) => Scaffold(
        body: SafeArea(
          child: Center(
            child: Text(
              e.toString(),
              style: theme.textTheme.h30,
            ),
          ),
        ),
      ),
      loading: () => Scaffold(
        body: SafeArea(
          child: Center(
            child: CircularProgressIndicator(
              color: theme.appColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
