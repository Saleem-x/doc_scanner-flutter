part of 'imagescacnned_bloc.dart';

@freezed
class ImagescacnnedEvent with _$ImagescacnnedEvent {
  const factory ImagescacnnedEvent.getImagePath({required String imagepath}) =
      GetImagePathEvent;

  const factory ImagescacnnedEvent.deleteimageEvent(
      {required int idx, required String imgpath}) = DeleteimageEvent;
}
