part of 'signinform_bloc.dart';

@freezed
abstract class SigninformState with _$SigninformState {
  const factory SigninformState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required bool reset,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
  }) = _SigninformState;

  factory SigninformState.initial() => SigninformState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        reset: false,
        authFailureOrSuccess: none(),
      );
}
