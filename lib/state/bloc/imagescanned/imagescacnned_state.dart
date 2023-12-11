part of 'imagescacnned_bloc.dart';

@freezed
class ImagescacnnedState with _$ImagescacnnedState {
  const factory ImagescacnnedState.imageScannedState(
      {required List<String> imagePath}) = ImageScannedState;

  factory ImagescacnnedState.initial() =>
      const ImagescacnnedState.imageScannedState(imagePath: []);
}
