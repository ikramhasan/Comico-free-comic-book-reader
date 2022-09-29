// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comic_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ComicState {
  bool get comicsLoading => throw _privateConstructorUsedError;
  List<Comic> get comics => throw _privateConstructorUsedError;
  Failure get comicsFailure => throw _privateConstructorUsedError;
  bool get comicDetailsLoading => throw _privateConstructorUsedError;
  Comic get comicDetails => throw _privateConstructorUsedError;
  Failure get comicDetailsFailure => throw _privateConstructorUsedError;
  bool get issueLoading => throw _privateConstructorUsedError;
  List<GenericInfo> get issue => throw _privateConstructorUsedError;
  Failure get issueFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComicStateCopyWith<ComicState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicStateCopyWith<$Res> {
  factory $ComicStateCopyWith(
          ComicState value, $Res Function(ComicState) then) =
      _$ComicStateCopyWithImpl<$Res>;
  $Res call(
      {bool comicsLoading,
      List<Comic> comics,
      Failure comicsFailure,
      bool comicDetailsLoading,
      Comic comicDetails,
      Failure comicDetailsFailure,
      bool issueLoading,
      List<GenericInfo> issue,
      Failure issueFailure});

  $FailureCopyWith<$Res> get comicsFailure;
  $ComicCopyWith<$Res> get comicDetails;
  $FailureCopyWith<$Res> get comicDetailsFailure;
  $FailureCopyWith<$Res> get issueFailure;
}

/// @nodoc
class _$ComicStateCopyWithImpl<$Res> implements $ComicStateCopyWith<$Res> {
  _$ComicStateCopyWithImpl(this._value, this._then);

  final ComicState _value;
  // ignore: unused_field
  final $Res Function(ComicState) _then;

  @override
  $Res call({
    Object? comicsLoading = freezed,
    Object? comics = freezed,
    Object? comicsFailure = freezed,
    Object? comicDetailsLoading = freezed,
    Object? comicDetails = freezed,
    Object? comicDetailsFailure = freezed,
    Object? issueLoading = freezed,
    Object? issue = freezed,
    Object? issueFailure = freezed,
  }) {
    return _then(_value.copyWith(
      comicsLoading: comicsLoading == freezed
          ? _value.comicsLoading
          : comicsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      comics: comics == freezed
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
      comicsFailure: comicsFailure == freezed
          ? _value.comicsFailure
          : comicsFailure // ignore: cast_nullable_to_non_nullable
              as Failure,
      comicDetailsLoading: comicDetailsLoading == freezed
          ? _value.comicDetailsLoading
          : comicDetailsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      comicDetails: comicDetails == freezed
          ? _value.comicDetails
          : comicDetails // ignore: cast_nullable_to_non_nullable
              as Comic,
      comicDetailsFailure: comicDetailsFailure == freezed
          ? _value.comicDetailsFailure
          : comicDetailsFailure // ignore: cast_nullable_to_non_nullable
              as Failure,
      issueLoading: issueLoading == freezed
          ? _value.issueLoading
          : issueLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      issue: issue == freezed
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as List<GenericInfo>,
      issueFailure: issueFailure == freezed
          ? _value.issueFailure
          : issueFailure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get comicsFailure {
    return $FailureCopyWith<$Res>(_value.comicsFailure, (value) {
      return _then(_value.copyWith(comicsFailure: value));
    });
  }

  @override
  $ComicCopyWith<$Res> get comicDetails {
    return $ComicCopyWith<$Res>(_value.comicDetails, (value) {
      return _then(_value.copyWith(comicDetails: value));
    });
  }

  @override
  $FailureCopyWith<$Res> get comicDetailsFailure {
    return $FailureCopyWith<$Res>(_value.comicDetailsFailure, (value) {
      return _then(_value.copyWith(comicDetailsFailure: value));
    });
  }

  @override
  $FailureCopyWith<$Res> get issueFailure {
    return $FailureCopyWith<$Res>(_value.issueFailure, (value) {
      return _then(_value.copyWith(issueFailure: value));
    });
  }
}

/// @nodoc
abstract class _$$_ComicStateCopyWith<$Res>
    implements $ComicStateCopyWith<$Res> {
  factory _$$_ComicStateCopyWith(
          _$_ComicState value, $Res Function(_$_ComicState) then) =
      __$$_ComicStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool comicsLoading,
      List<Comic> comics,
      Failure comicsFailure,
      bool comicDetailsLoading,
      Comic comicDetails,
      Failure comicDetailsFailure,
      bool issueLoading,
      List<GenericInfo> issue,
      Failure issueFailure});

  @override
  $FailureCopyWith<$Res> get comicsFailure;
  @override
  $ComicCopyWith<$Res> get comicDetails;
  @override
  $FailureCopyWith<$Res> get comicDetailsFailure;
  @override
  $FailureCopyWith<$Res> get issueFailure;
}

/// @nodoc
class __$$_ComicStateCopyWithImpl<$Res> extends _$ComicStateCopyWithImpl<$Res>
    implements _$$_ComicStateCopyWith<$Res> {
  __$$_ComicStateCopyWithImpl(
      _$_ComicState _value, $Res Function(_$_ComicState) _then)
      : super(_value, (v) => _then(v as _$_ComicState));

  @override
  _$_ComicState get _value => super._value as _$_ComicState;

  @override
  $Res call({
    Object? comicsLoading = freezed,
    Object? comics = freezed,
    Object? comicsFailure = freezed,
    Object? comicDetailsLoading = freezed,
    Object? comicDetails = freezed,
    Object? comicDetailsFailure = freezed,
    Object? issueLoading = freezed,
    Object? issue = freezed,
    Object? issueFailure = freezed,
  }) {
    return _then(_$_ComicState(
      comicsLoading: comicsLoading == freezed
          ? _value.comicsLoading
          : comicsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      comics: comics == freezed
          ? _value._comics
          : comics // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
      comicsFailure: comicsFailure == freezed
          ? _value.comicsFailure
          : comicsFailure // ignore: cast_nullable_to_non_nullable
              as Failure,
      comicDetailsLoading: comicDetailsLoading == freezed
          ? _value.comicDetailsLoading
          : comicDetailsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      comicDetails: comicDetails == freezed
          ? _value.comicDetails
          : comicDetails // ignore: cast_nullable_to_non_nullable
              as Comic,
      comicDetailsFailure: comicDetailsFailure == freezed
          ? _value.comicDetailsFailure
          : comicDetailsFailure // ignore: cast_nullable_to_non_nullable
              as Failure,
      issueLoading: issueLoading == freezed
          ? _value.issueLoading
          : issueLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      issue: issue == freezed
          ? _value._issue
          : issue // ignore: cast_nullable_to_non_nullable
              as List<GenericInfo>,
      issueFailure: issueFailure == freezed
          ? _value.issueFailure
          : issueFailure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_ComicState implements _ComicState {
  const _$_ComicState(
      {required this.comicsLoading,
      required final List<Comic> comics,
      required this.comicsFailure,
      required this.comicDetailsLoading,
      required this.comicDetails,
      required this.comicDetailsFailure,
      required this.issueLoading,
      required final List<GenericInfo> issue,
      required this.issueFailure})
      : _comics = comics,
        _issue = issue;

  @override
  final bool comicsLoading;
  final List<Comic> _comics;
  @override
  List<Comic> get comics {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comics);
  }

  @override
  final Failure comicsFailure;
  @override
  final bool comicDetailsLoading;
  @override
  final Comic comicDetails;
  @override
  final Failure comicDetailsFailure;
  @override
  final bool issueLoading;
  final List<GenericInfo> _issue;
  @override
  List<GenericInfo> get issue {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_issue);
  }

  @override
  final Failure issueFailure;

  @override
  String toString() {
    return 'ComicState(comicsLoading: $comicsLoading, comics: $comics, comicsFailure: $comicsFailure, comicDetailsLoading: $comicDetailsLoading, comicDetails: $comicDetails, comicDetailsFailure: $comicDetailsFailure, issueLoading: $issueLoading, issue: $issue, issueFailure: $issueFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicState &&
            const DeepCollectionEquality()
                .equals(other.comicsLoading, comicsLoading) &&
            const DeepCollectionEquality().equals(other._comics, _comics) &&
            const DeepCollectionEquality()
                .equals(other.comicsFailure, comicsFailure) &&
            const DeepCollectionEquality()
                .equals(other.comicDetailsLoading, comicDetailsLoading) &&
            const DeepCollectionEquality()
                .equals(other.comicDetails, comicDetails) &&
            const DeepCollectionEquality()
                .equals(other.comicDetailsFailure, comicDetailsFailure) &&
            const DeepCollectionEquality()
                .equals(other.issueLoading, issueLoading) &&
            const DeepCollectionEquality().equals(other._issue, _issue) &&
            const DeepCollectionEquality()
                .equals(other.issueFailure, issueFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(comicsLoading),
      const DeepCollectionEquality().hash(_comics),
      const DeepCollectionEquality().hash(comicsFailure),
      const DeepCollectionEquality().hash(comicDetailsLoading),
      const DeepCollectionEquality().hash(comicDetails),
      const DeepCollectionEquality().hash(comicDetailsFailure),
      const DeepCollectionEquality().hash(issueLoading),
      const DeepCollectionEquality().hash(_issue),
      const DeepCollectionEquality().hash(issueFailure));

  @JsonKey(ignore: true)
  @override
  _$$_ComicStateCopyWith<_$_ComicState> get copyWith =>
      __$$_ComicStateCopyWithImpl<_$_ComicState>(this, _$identity);
}

abstract class _ComicState implements ComicState {
  const factory _ComicState(
      {required final bool comicsLoading,
      required final List<Comic> comics,
      required final Failure comicsFailure,
      required final bool comicDetailsLoading,
      required final Comic comicDetails,
      required final Failure comicDetailsFailure,
      required final bool issueLoading,
      required final List<GenericInfo> issue,
      required final Failure issueFailure}) = _$_ComicState;

  @override
  bool get comicsLoading;
  @override
  List<Comic> get comics;
  @override
  Failure get comicsFailure;
  @override
  bool get comicDetailsLoading;
  @override
  Comic get comicDetails;
  @override
  Failure get comicDetailsFailure;
  @override
  bool get issueLoading;
  @override
  List<GenericInfo> get issue;
  @override
  Failure get issueFailure;
  @override
  @JsonKey(ignore: true)
  _$$_ComicStateCopyWith<_$_ComicState> get copyWith =>
      throw _privateConstructorUsedError;
}
