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
  String get imagepath => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagepath) getImagePath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagepath)? getImagePath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagepath)? getImagePath,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImagePathEvent value) getImagePath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetImagePathEvent value)? getImagePath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImagePathEvent value)? getImagePath,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImagescacnnedEventCopyWith<ImagescacnnedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagescacnnedEventCopyWith<$Res> {
  factory $ImagescacnnedEventCopyWith(
          ImagescacnnedEvent value, $Res Function(ImagescacnnedEvent) then) =
      _$ImagescacnnedEventCopyWithImpl<$Res, ImagescacnnedEvent>;
  @useResult
  $Res call({String imagepath});
}

/// @nodoc
class _$ImagescacnnedEventCopyWithImpl<$Res, $Val extends ImagescacnnedEvent>
    implements $ImagescacnnedEventCopyWith<$Res> {
  _$ImagescacnnedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagepath = null,
  }) {
    return _then(_value.copyWith(
      imagepath: null == imagepath
          ? _value.imagepath
          : imagepath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetImagePathEventImplCopyWith<$Res>
    implements $ImagescacnnedEventCopyWith<$Res> {
  factory _$$GetImagePathEventImplCopyWith(_$GetImagePathEventImpl value,
          $Res Function(_$GetImagePathEventImpl) then) =
      __$$GetImagePathEventImplCopyWithImpl<$Res>;
  @override
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
  }) {
    return getImagePath(imagepath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagepath)? getImagePath,
  }) {
    return getImagePath?.call(imagepath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagepath)? getImagePath,
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
  }) {
    return getImagePath(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetImagePathEvent value)? getImagePath,
  }) {
    return getImagePath?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImagePathEvent value)? getImagePath,
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

  @override
  String get imagepath;
  @override
  @JsonKey(ignore: true)
  _$$GetImagePathEventImplCopyWith<_$GetImagePathEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImagescacnnedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? imagePath) imageScannedState,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? imagePath)? imageScannedState,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? imagePath)? imageScannedState,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageScannedState value) imageScannedState,
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageScannedState value)? imageScannedState,
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageScannedState value)? imageScannedState,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagescacnnedStateCopyWith<$Res> {
  factory $ImagescacnnedStateCopyWith(
          ImagescacnnedState value, $Res Function(ImagescacnnedState) then) =
      _$ImagescacnnedStateCopyWithImpl<$Res, ImagescacnnedState>;
}

/// @nodoc
class _$ImagescacnnedStateCopyWithImpl<$Res, $Val extends ImagescacnnedState>
    implements $ImagescacnnedStateCopyWith<$Res> {
  _$ImagescacnnedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ImageScannedStateImplCopyWith<$Res> {
  factory _$$ImageScannedStateImplCopyWith(_$ImageScannedStateImpl value,
          $Res Function(_$ImageScannedStateImpl) then) =
      __$$ImageScannedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? imagePath});
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
    Object? imagePath = freezed,
  }) {
    return _then(_$ImageScannedStateImpl(
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ImageScannedStateImpl implements ImageScannedState {
  const _$ImageScannedStateImpl({required this.imagePath});

  @override
  final String? imagePath;

  @override
  String toString() {
    return 'ImagescacnnedState.imageScannedState(imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageScannedStateImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageScannedStateImplCopyWith<_$ImageScannedStateImpl> get copyWith =>
      __$$ImageScannedStateImplCopyWithImpl<_$ImageScannedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? imagePath) imageScannedState,
    required TResult Function() initial,
  }) {
    return imageScannedState(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? imagePath)? imageScannedState,
    TResult? Function()? initial,
  }) {
    return imageScannedState?.call(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? imagePath)? imageScannedState,
    TResult Function()? initial,
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
    required TResult Function(_Initial value) initial,
  }) {
    return imageScannedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageScannedState value)? imageScannedState,
    TResult? Function(_Initial value)? initial,
  }) {
    return imageScannedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageScannedState value)? imageScannedState,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (imageScannedState != null) {
      return imageScannedState(this);
    }
    return orElse();
  }
}

abstract class ImageScannedState implements ImagescacnnedState {
  const factory ImageScannedState({required final String? imagePath}) =
      _$ImageScannedStateImpl;

  String? get imagePath;
  @JsonKey(ignore: true)
  _$$ImageScannedStateImplCopyWith<_$ImageScannedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ImagescacnnedStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ImagescacnnedState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? imagePath) imageScannedState,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? imagePath)? imageScannedState,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? imagePath)? imageScannedState,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageScannedState value) imageScannedState,
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageScannedState value)? imageScannedState,
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageScannedState value)? imageScannedState,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ImagescacnnedState {
  const factory _Initial() = _$InitialImpl;
}
