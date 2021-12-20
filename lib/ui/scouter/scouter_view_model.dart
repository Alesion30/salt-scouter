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
      final controller = CameraController(cameras[0], ResolutionPreset.medium);
      await controller.initialize();
      state = AsyncValue.data(
        ScouterState(
          controller: controller,
        ),
      );
    } catch (e) {
      state = AsyncValue.error(e);
    }
  }
}
