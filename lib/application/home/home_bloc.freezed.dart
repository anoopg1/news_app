// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNewsData,
    required TResult Function(BuildContext context) navigateToNewsDetail,
    required TResult Function(BuildContext context) navigateToSearchScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNewsData,
    TResult? Function(BuildContext context)? navigateToNewsDetail,
    TResult? Function(BuildContext context)? navigateToSearchScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNewsData,
    TResult Function(BuildContext context)? navigateToNewsDetail,
    TResult Function(BuildContext context)? navigateToSearchScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNewsData value) getNewsData,
    required TResult Function(NavigateToNewsDetail value) navigateToNewsDetail,
    required TResult Function(NavigateToSearchScreen value)
        navigateToSearchScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNewsData value)? getNewsData,
    TResult? Function(NavigateToNewsDetail value)? navigateToNewsDetail,
    TResult? Function(NavigateToSearchScreen value)? navigateToSearchScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNewsData value)? getNewsData,
    TResult Function(NavigateToNewsDetail value)? navigateToNewsDetail,
    TResult Function(NavigateToSearchScreen value)? navigateToSearchScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetNewsDataImplCopyWith<$Res> {
  factory _$$GetNewsDataImplCopyWith(
          _$GetNewsDataImpl value, $Res Function(_$GetNewsDataImpl) then) =
      __$$GetNewsDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNewsDataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetNewsDataImpl>
    implements _$$GetNewsDataImplCopyWith<$Res> {
  __$$GetNewsDataImplCopyWithImpl(
      _$GetNewsDataImpl _value, $Res Function(_$GetNewsDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetNewsDataImpl implements GetNewsData {
  const _$GetNewsDataImpl();

  @override
  String toString() {
    return 'HomeEvent.getNewsData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNewsDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNewsData,
    required TResult Function(BuildContext context) navigateToNewsDetail,
    required TResult Function(BuildContext context) navigateToSearchScreen,
  }) {
    return getNewsData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNewsData,
    TResult? Function(BuildContext context)? navigateToNewsDetail,
    TResult? Function(BuildContext context)? navigateToSearchScreen,
  }) {
    return getNewsData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNewsData,
    TResult Function(BuildContext context)? navigateToNewsDetail,
    TResult Function(BuildContext context)? navigateToSearchScreen,
    required TResult orElse(),
  }) {
    if (getNewsData != null) {
      return getNewsData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNewsData value) getNewsData,
    required TResult Function(NavigateToNewsDetail value) navigateToNewsDetail,
    required TResult Function(NavigateToSearchScreen value)
        navigateToSearchScreen,
  }) {
    return getNewsData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNewsData value)? getNewsData,
    TResult? Function(NavigateToNewsDetail value)? navigateToNewsDetail,
    TResult? Function(NavigateToSearchScreen value)? navigateToSearchScreen,
  }) {
    return getNewsData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNewsData value)? getNewsData,
    TResult Function(NavigateToNewsDetail value)? navigateToNewsDetail,
    TResult Function(NavigateToSearchScreen value)? navigateToSearchScreen,
    required TResult orElse(),
  }) {
    if (getNewsData != null) {
      return getNewsData(this);
    }
    return orElse();
  }
}

abstract class GetNewsData implements HomeEvent {
  const factory GetNewsData() = _$GetNewsDataImpl;
}

/// @nodoc
abstract class _$$NavigateToNewsDetailImplCopyWith<$Res> {
  factory _$$NavigateToNewsDetailImplCopyWith(_$NavigateToNewsDetailImpl value,
          $Res Function(_$NavigateToNewsDetailImpl) then) =
      __$$NavigateToNewsDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$NavigateToNewsDetailImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$NavigateToNewsDetailImpl>
    implements _$$NavigateToNewsDetailImplCopyWith<$Res> {
  __$$NavigateToNewsDetailImplCopyWithImpl(_$NavigateToNewsDetailImpl _value,
      $Res Function(_$NavigateToNewsDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$NavigateToNewsDetailImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$NavigateToNewsDetailImpl implements NavigateToNewsDetail {
  const _$NavigateToNewsDetailImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'HomeEvent.navigateToNewsDetail(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToNewsDetailImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToNewsDetailImplCopyWith<_$NavigateToNewsDetailImpl>
      get copyWith =>
          __$$NavigateToNewsDetailImplCopyWithImpl<_$NavigateToNewsDetailImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNewsData,
    required TResult Function(BuildContext context) navigateToNewsDetail,
    required TResult Function(BuildContext context) navigateToSearchScreen,
  }) {
    return navigateToNewsDetail(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNewsData,
    TResult? Function(BuildContext context)? navigateToNewsDetail,
    TResult? Function(BuildContext context)? navigateToSearchScreen,
  }) {
    return navigateToNewsDetail?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNewsData,
    TResult Function(BuildContext context)? navigateToNewsDetail,
    TResult Function(BuildContext context)? navigateToSearchScreen,
    required TResult orElse(),
  }) {
    if (navigateToNewsDetail != null) {
      return navigateToNewsDetail(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNewsData value) getNewsData,
    required TResult Function(NavigateToNewsDetail value) navigateToNewsDetail,
    required TResult Function(NavigateToSearchScreen value)
        navigateToSearchScreen,
  }) {
    return navigateToNewsDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNewsData value)? getNewsData,
    TResult? Function(NavigateToNewsDetail value)? navigateToNewsDetail,
    TResult? Function(NavigateToSearchScreen value)? navigateToSearchScreen,
  }) {
    return navigateToNewsDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNewsData value)? getNewsData,
    TResult Function(NavigateToNewsDetail value)? navigateToNewsDetail,
    TResult Function(NavigateToSearchScreen value)? navigateToSearchScreen,
    required TResult orElse(),
  }) {
    if (navigateToNewsDetail != null) {
      return navigateToNewsDetail(this);
    }
    return orElse();
  }
}

abstract class NavigateToNewsDetail implements HomeEvent {
  const factory NavigateToNewsDetail({required final BuildContext context}) =
      _$NavigateToNewsDetailImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$NavigateToNewsDetailImplCopyWith<_$NavigateToNewsDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigateToSearchScreenImplCopyWith<$Res> {
  factory _$$NavigateToSearchScreenImplCopyWith(
          _$NavigateToSearchScreenImpl value,
          $Res Function(_$NavigateToSearchScreenImpl) then) =
      __$$NavigateToSearchScreenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$NavigateToSearchScreenImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$NavigateToSearchScreenImpl>
    implements _$$NavigateToSearchScreenImplCopyWith<$Res> {
  __$$NavigateToSearchScreenImplCopyWithImpl(
      _$NavigateToSearchScreenImpl _value,
      $Res Function(_$NavigateToSearchScreenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$NavigateToSearchScreenImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$NavigateToSearchScreenImpl implements NavigateToSearchScreen {
  const _$NavigateToSearchScreenImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'HomeEvent.navigateToSearchScreen(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToSearchScreenImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToSearchScreenImplCopyWith<_$NavigateToSearchScreenImpl>
      get copyWith => __$$NavigateToSearchScreenImplCopyWithImpl<
          _$NavigateToSearchScreenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNewsData,
    required TResult Function(BuildContext context) navigateToNewsDetail,
    required TResult Function(BuildContext context) navigateToSearchScreen,
  }) {
    return navigateToSearchScreen(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNewsData,
    TResult? Function(BuildContext context)? navigateToNewsDetail,
    TResult? Function(BuildContext context)? navigateToSearchScreen,
  }) {
    return navigateToSearchScreen?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNewsData,
    TResult Function(BuildContext context)? navigateToNewsDetail,
    TResult Function(BuildContext context)? navigateToSearchScreen,
    required TResult orElse(),
  }) {
    if (navigateToSearchScreen != null) {
      return navigateToSearchScreen(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNewsData value) getNewsData,
    required TResult Function(NavigateToNewsDetail value) navigateToNewsDetail,
    required TResult Function(NavigateToSearchScreen value)
        navigateToSearchScreen,
  }) {
    return navigateToSearchScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNewsData value)? getNewsData,
    TResult? Function(NavigateToNewsDetail value)? navigateToNewsDetail,
    TResult? Function(NavigateToSearchScreen value)? navigateToSearchScreen,
  }) {
    return navigateToSearchScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNewsData value)? getNewsData,
    TResult Function(NavigateToNewsDetail value)? navigateToNewsDetail,
    TResult Function(NavigateToSearchScreen value)? navigateToSearchScreen,
    required TResult orElse(),
  }) {
    if (navigateToSearchScreen != null) {
      return navigateToSearchScreen(this);
    }
    return orElse();
  }
}

abstract class NavigateToSearchScreen implements HomeEvent {
  const factory NavigateToSearchScreen({required final BuildContext context}) =
      _$NavigateToSearchScreenImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$NavigateToSearchScreenImplCopyWith<_$NavigateToSearchScreenImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  dynamic get news => throw _privateConstructorUsedError;
  bool get loadingStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({bool isLoading, dynamic news, bool loadingStatus});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? news = freezed,
    Object? loadingStatus = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      news: freezed == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as dynamic,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, dynamic news, bool loadingStatus});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? news = freezed,
    Object? loadingStatus = null,
  }) {
    return _then(_$HomeStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      news: freezed == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as dynamic,
      loadingStatus: null == loadingStatus
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.isLoading,
      required this.news,
      required this.loadingStatus});

  @override
  final bool isLoading;
  @override
  final dynamic news;
  @override
  final bool loadingStatus;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, news: $news, loadingStatus: $loadingStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.news, news) &&
            (identical(other.loadingStatus, loadingStatus) ||
                other.loadingStatus == loadingStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(news), loadingStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final bool isLoading,
      required final dynamic news,
      required final bool loadingStatus}) = _$HomeStateImpl;

  @override
  bool get isLoading;
  @override
  dynamic get news;
  @override
  bool get loadingStatus;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
