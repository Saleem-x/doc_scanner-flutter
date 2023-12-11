// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'imagescacnned_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImagescacnnedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagepath) getImagePath,
    required TResult Function(int idx, String imgpath) deleteimageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagepath)? getImagePath,
    TResult? Function(int idx, String imgpath)? deleteimageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagepath)? getImagePath,
    TResult Function(int idx, String imgpath)? deleteimageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImagePathEvent value) getImagePath,
    required TResult Function(DeleteimageEvent value) deleteimageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetImagePathEvent value)? getImagePath,
    TResult? Function(DeleteimageEvent value)? deleteimageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImagePathEvent value)? getImagePath,
    TResult Function(DeleteimageEvent value)? deleteimageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagescacnnedEventCopyWith<$Res> {
  factory $ImagescacnnedEventCopyWith(
          ImagescacnnedEvent value, $Res Function(ImagescacnnedEvent) then) =
      _$ImagescacnnedEventCopyWithImpl<$Res, ImagescacnnedEvent>;
}

/// @nodoc
class _$ImagescacnnedEventCopyWithImpl<$Res, $Val extends ImagescacnnedEvent>
    implements $ImagescacnnedEventCopyWith<$Res> {
  _$ImagescacnnedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetImagePathEventImplCopyWith<$Res> {
  factory _$$GetImagePathEventImplCopyWith(_$GetImagePathEventImpl value,
          $Res Function(_$GetImagePathEventImpl) then) =
      __$$GetImagePathEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagepath});
}

/// @nodoc
class __$$GetImagePathEventImplCopyWithImpl<$Res>
    extends _$ImagescacnnedEventCopyWithImpl<$Res, _$GetImagePathEventImpl>
    implements _$$GetImagePathEventImplCopyWith<$Res> {
  __$$GetImagePathEventImplCopyWithImpl(_$GetImagePathEventImpl _value,
      $Res Function(_$GetImagePathEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagepath = null,
  }) {
    return _then(_$GetImagePathEventImpl(
      imagepath: null == imagepath
          ? _value.imagepath
          : imagepath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetImagePathEventImpl implements GetImagePathEvent {
  const _$GetImagePathEventImpl({required this.imagepath});

  @override
  final String imagepath;

  @override
  String toString() {
    return 'ImagescacnnedEvent.getImagePath(imagepath: $imagepath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImagePathEventImpl &&
            (identical(other.imagepath, imagepath) ||
                other.imagepath == imagepath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagepath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetImagePathEventImplCopyWith<_$GetImagePathEventImpl> get copyWith =>
      __$$GetImagePathEventImplCopyWithImpl<_$GetImagePathEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagepath) getImagePath,
    required TResult Function(int idx, String imgpath) deleteimageEvent,
  }) {
    return getImagePath(imagepath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagepath)? getImagePath,
    TResult? Function(int idx, String imgpath)? deleteimageEvent,
  }) {
    return getImagePath?.call(imagepath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagepath)? getImagePath,
    TResult Function(int idx, String imgpath)? deleteimageEvent,
    required TResult orElse(),
  }) {
    if (getImagePath != null) {
      return getImagePath(imagepath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImagePathEvent value) getImagePath,
    required TResult Function(DeleteimageEvent value) deleteimageEvent,
  }) {
    return getImagePath(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetImagePathEvent value)? getImagePath,
    TResult? Function(DeleteimageEvent value)? deleteimageEvent,
  }) {
    return getImagePath?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImagePathEvent value)? getImagePath,
    TResult Function(DeleteimageEvent value)? deleteimageEvent,
    required TResult orElse(),
  }) {
    if (getImagePath != null) {
      return getImagePath(this);
    }
    return orElse();
  }
}

abstract class GetImagePathEvent implements ImagescacnnedEvent {
  const factory GetImagePathEvent({required final String imagepath}) =
      _$GetImagePathEventImpl;

  String get imagepath;
  @JsonKey(ignore: true)
  _$$GetImagePathEventImplCopyWith<_$GetImagePathEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteimageEventImplCopyWith<$Res> {
  factory _$$DeleteimageEventImplCopyWith(_$DeleteimageEventImpl value,
          $Res Function(_$DeleteimageEventImpl) then) =
      __$$DeleteimageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idx, String imgpath});
}

/// @nodoc
class __$$DeleteimageEventImplCopyWithImpl<$Res>
    extends _$ImagescacnnedEventCopyWithImpl<$Res, _$DeleteimageEventImpl>
    implements _$$DeleteimageEventImplCopyWith<$Res> {
  __$$DeleteimageEventImplCopyWithImpl(_$DeleteimageEventImpl _value,
      $Res Function(_$DeleteimageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? imgpath = null,
  }) {
    return _then(_$DeleteimageEventImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      imgpath: null == imgpath
          ? _value.imgpath
          : imgpath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteimageEventImpl implements DeleteimageEvent {
  const _$DeleteimageEventImpl({required this.idx, required this.imgpath});

  @override
  final int idx;
  @override
  final String imgpath;

  @override
  String toString() {
    return 'ImagescacnnedEvent.deleteimageEvent(idx: $idx, imgpath: $imgpath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteimageEventImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.imgpath, imgpath) || other.imgpath == imgpath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idx, imgpath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteimageEventImplCopyWith<_$DeleteimageEventImpl> get copyWith =>
      __$$DeleteimageEventImplCopyWithImpl<_$DeleteimageEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagepath) getImagePath,
    required TResult Function(int idx, String imgpath) deleteimageEvent,
  }) {
    return deleteimageEvent(idx, imgpath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagepath)? getImagePath,
    TResult? Function(int idx, String imgpath)? deleteimageEvent,
  }) {
    return deleteimageEvent?.call(idx, imgpath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagepath)? getImagePath,
    TResult Function(int idx, String imgpath)? deleteimageEvent,
    required TResult orElse(),
  }) {
    if (deleteimageEvent != null) {
      return deleteimageEvent(idx, imgpath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImagePathEvent value) getImagePath,
    required TResult Function(DeleteimageEvent value) deleteimageEvent,
  }) {
    return deleteimageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetImagePathEvent value)? getImagePath,
    TResult? Function(DeleteimageEvent value)? deleteimageEvent,
  }) {
    return deleteimageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImagePathEvent value)? getImagePath,
    TResult Function(DeleteimageEvent value)? deleteimageEvent,
    required TResult orElse(),
  }) {
    if (deleteimageEvent != null) {
      return deleteimageEvent(this);
    }
    return orElse();
  }
}

abstract class DeleteimageEvent implements ImagescacnnedEvent {
  const factory DeleteimageEvent(
      {required final int idx,
      required final String imgpath}) = _$DeleteimageEventImpl;

  int get idx;
  String get imgpath;
  @JsonKey(ignore: true)
  _$$DeleteimageEventImplCopyWith<_$DeleteimageEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImagescacnnedState {
  List<String> get imagePath => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> imagePath) imageScannedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> imagePath)? imageScannedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> imagePath)? imageScannedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageScannedState value) imageScannedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageScannedState value)? imageScannedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageScannedState value)? imageScannedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImagescacnnedStateCopyWith<ImagescacnnedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagescacnnedStateCopyWith<$Res> {
  factory $ImagescacnnedStateCopyWith(
          ImagescacnnedState value, $Res Function(ImagescacnnedState) then) =
      _$ImagescacnnedStateCopyWithImpl<$Res, ImagescacnnedState>;
  @useResult
  $Res call({List<String> imagePath});
}

/// @nodoc
class _$ImagescacnnedStateCopyWithImpl<$Res, $Val extends ImagescacnnedState>
    implements $ImagescacnnedStateCopyWith<$Res> {
  _$ImagescacnnedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageScannedStateImplCopyWith<$Res>
    implements $ImagescacnnedStateCopyWith<$Res> {
  factory _$$ImageScannedStateImplCopyWith(_$ImageScannedStateImpl value,
          $Res Function(_$ImageScannedStateImpl) then) =
      __$$ImageScannedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> imagePath});
}

/// @nodoc
class __$$ImageScannedStateImplCopyWithImpl<$Res>
    extends _$ImagescacnnedStateCopyWithImpl<$Res, _$ImageScannedStateImpl>
    implements _$$ImageScannedStateImplCopyWith<$Res> {
  __$$ImageScannedStateImplCopyWithImpl(_$ImageScannedStateImpl _value,
      $Res Function(_$ImageScannedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_$ImageScannedStateImpl(
      imagePath: null == imagePath
          ? _value._imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ImageScannedStateImpl implements ImageScannedState {
  const _$ImageScannedStateImpl({required final List<String> imagePath})
      : _imagePath = imagePath;

  final List<String> _imagePath;
  @override
  List<String> get imagePath {
    if (_imagePath is EqualUnmodifiableListView) return _imagePath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagePath);
  }

  @override
  String toString() {
    return 'ImagescacnnedState.imageScannedState(imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageScannedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._imagePath, _imagePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_imagePath));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageScannedStateImplCopyWith<_$ImageScannedStateImpl> get copyWith =>
      __$$ImageScannedStateImplCopyWithImpl<_$ImageScannedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> imagePath) imageScannedState,
  }) {
    return imageScannedState(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> imagePath)? imageScannedState,
  }) {
    return imageScannedState?.call(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> imagePath)? imageScannedState,
    required TResult orElse(),
  }) {
    if (imageScannedState != null) {
      return imageScannedState(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageScannedState value) imageScannedState,
  }) {
    return imageScannedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageScannedState value)? imageScannedState,
  }) {
    return imageScannedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageScannedState value)? imageScannedState,
    required TResult orElse(),
  }) {
    if (imageScannedState != null) {
      return imageScannedState(this);
    }
    return orElse();
  }
}

abstract class ImageScannedState implements ImagescacnnedState {
  const factory ImageScannedState({required final List<String> imagePath}) =
      _$ImageScannedStateImpl;

  @override
  List<String> get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$ImageScannedStateImplCopyWith<_$ImageScannedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
