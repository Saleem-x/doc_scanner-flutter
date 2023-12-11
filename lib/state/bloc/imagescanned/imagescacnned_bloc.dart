import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'imagescacnned_event.dart';
part 'imagescacnned_state.dart';
part 'imagescacnned_bloc.freezed.dart';

class ImagescacnnedBloc extends Bloc<ImagescacnnedEvent, ImagescacnnedState> {
  ImagescacnnedBloc() : super(ImagescacnnedState.initial()) {
    on<GetImagePathEvent>((event, emit) {
      print('in bloc');
      List<String> imagepaths = state.imagePath + [event.imagepath];

      print('images length${imagepaths.length}');
      return emit(ImageScannedState(imagePath: imagepaths));
    });
  }
}
