import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scouter_state.freezed.dart';

@freezed
class ScouterState with _$ScouterState {
  const factory ScouterState({
    CameraController? controller,
  }) = _ScouterState;
}
