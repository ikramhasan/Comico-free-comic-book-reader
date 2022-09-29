import 'package:comic_repository/comic_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure({
    required String message,
    required String code,
  }) = _Failure;

  factory Failure.none() => const _Failure(code: '', message: '');

  factory Failure.fromComicFailure(ComicFailure cFailure) => _Failure(
        code: cFailure.code.toString(),
        message: cFailure.message,
      );
}
