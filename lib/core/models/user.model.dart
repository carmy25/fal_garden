import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.model.freezed.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser(
      {required int id,
      required String accessToken,
      required String refreshToken,
      required String username}) = _AppUser;
}
