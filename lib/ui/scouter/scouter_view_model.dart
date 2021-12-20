import 'package:camera/camera.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'scouter_state.dart';

final scouterViewModelProvider = StateNotifierProvider.autoDispose<
    ScouterViewModel, AsyncValue<ScouterState>>(
  (ref) => ScouterViewModel(ref: ref),
);

class ScouterViewModel extends StateNotifier<AsyncValue<ScouterState>> {
  final AutoDisposeStateNotifierProviderRef _ref;
  ScouterViewModel({required AutoDisposeStateNotifierProviderRef ref})
      : _ref = ref,
        super(const AsyncLoading()) {
    load();
  }

  // 初期化
  Future<void> load() async {
    try {
      final cameras = await availableCameras();
      final controller = CameraController(
        cameras.first,
        ResolutionPreset.medium,
      );
      await controller.initialize();
      state = AsyncValue.data(
        ScouterState(
          controller: controller,
          isPause: false,
        ),
      );
    } catch (e) {
      state = AsyncValue.error(e);
    }
  }

  // カメラ停止
  Future<void> pause() async {
    try {
      await state.value!.controller!.pausePreview();
      state = AsyncValue.data(
        state.value!.copyWith(isPause: true),
      );
    } catch (e) {
      state = AsyncValue.error(e);
    }
  }

  // カメラ再開
  Future<void> resume() async {
    try {
      await state.value!.controller!.resumePreview();
      state = AsyncValue.data(
        state.value!.copyWith(isPause: false),
      );
    } catch (e) {
      state = AsyncValue.error(e);
    }
  }
}
