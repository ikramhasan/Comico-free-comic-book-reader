// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_comic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchComicEvent {
  String get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchComicEventCopyWith<SearchComicEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchComicEventCopyWith<$Res> {
  factory $SearchComicEventCopyWith(
          SearchComicEvent value, $Res Function(SearchComicEvent) then) =
      _$SearchComicEventCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchComicEventCopyWithImpl<$Res>
    implements $SearchComicEventCopyWith<$Res> {
  _$SearchComicEventCopyWithImpl(this._value, this._then);

  final SearchComicEvent _value;
  // ignore: unused_field
  final $Res Function(SearchComicEvent) _then;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchCopyWith<$Res>
    implements $SearchComicEventCopyWith<$Res> {
  factory _$$_SearchCopyWith(_$_Search value, $Res Function(_$_Search) then) =
      __$$_SearchCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

/// @nodoc
class __$$_SearchCopyWithImpl<$Res> extends _$SearchComicEventCopyWithImpl<$Res>
    implements _$$_SearchCopyWith<$Res> {
  __$$_SearchCopyWithImpl(_$_Search _value, $Res Function(_$_Search) _then)
      : super(_value, (v) => _then(v as _$_Search));

  @override
  _$_Search get _value => super._value as _$_Search;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$_Search(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Search implements _Search {
  const _$_Search(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchComicEvent.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Search &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      __$$_SearchCopyWithImpl<_$_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? search,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements SearchComicEvent {
  const factory _Search(final String query) = _$_Search;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchComicState {
  bool get loading => throw _privateConstructorUsedError;
  List<Comic> get comics => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchComicStateCopyWith<SearchComicState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchComicStateCopyWith<$Res> {
  factory $SearchComicStateCopyWith(
          SearchComicState value, $Res Function(SearchComicState) then) =
      _$SearchComicStateCopyWithImpl<$Res>;
  $Res call({bool loading, List<Comic> comics, Failure failure, String query});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$SearchComicStateCopyWithImpl<$Res>
    implements $SearchComicStateCopyWith<$Res> {
  _$SearchComicStateCopyWithImpl(this._value, this._then);

  final SearchComicState _value;
  // ignore: unused_field
  final $Res Function(SearchComicState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? comics = freezed,
    Object? failure = freezed,
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      comics: comics == freezed
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
abstract class _$$_SearchComicStateCopyWith<$Res>
    implements $SearchComicStateCopyWith<$Res> {
  factory _$$_SearchComicStateCopyWith(
          _$_SearchComicState value, $Res Function(_$_SearchComicState) then) =
      __$$_SearchComicStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, List<Comic> comics, Failure failure, String query});

  @override
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_SearchComicStateCopyWithImpl<$Res>
    extends _$SearchComicStateCopyWithImpl<$Res>
    implements _$$_SearchComicStateCopyWith<$Res> {
  __$$_SearchComicStateCopyWithImpl(
      _$_SearchComicState _value, $Res Function(_$_SearchComicState) _then)
      : super(_value, (v) => _then(v as _$_SearchComicState));

  @override
  _$_SearchComicState get _value => super._value as _$_SearchComicState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? comics = freezed,
    Object? failure = freezed,
    Object? query = freezed,
  }) {
    return _then(_$_SearchComicState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      comics: comics == freezed
          ? _value._comics
          : comics // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchComicState implements _SearchComicState {
  const _$_SearchComicState(
      {required this.loading,
      required final List<Comic> comics,
      required this.failure,
      required this.query})
      : _comics = comics;

  @override
  final bool loading;
  final List<Comic> _comics;
  @override
  List<Comic> get comics {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comics);
  }

  @override
  final Failure failure;
  @override
  final String query;

  @override
  String toString() {
    return 'SearchComicState(loading: $loading, comics: $comics, failure: $failure, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchComicState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other._comics, _comics) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(_comics),
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$_SearchComicStateCopyWith<_$_SearchComicState> get copyWith =>
      __$$_SearchComicStateCopyWithImpl<_$_SearchComicState>(this, _$identity);
}

abstract class _SearchComicState implements SearchComicState {
  const factory _SearchComicState(
      {required final bool loading,
      required final List<Comic> comics,
      required final Failure failure,
      required final String query}) = _$_SearchComicState;

  @override
  bool get loading;
  @override
  List<Comic> get comics;
  @override
  Failure get failure;
  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_SearchComicStateCopyWith<_$_SearchComicState> get copyWith =>
      throw _privateConstructorUsedError;
}
