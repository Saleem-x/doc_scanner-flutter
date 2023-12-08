part of 'imagescacnned_bloc.dart';

@freezed
class ImagescacnnedEvent with _$ImagescacnnedEvent {
  const factory ImagescacnnedEvent.getImagePath({required String imagepath}) =
      GetImagePathEvent;
}
