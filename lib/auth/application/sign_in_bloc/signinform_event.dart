part of 'signinform_bloc.dart';

@freezed
abstract class SigninformEvent with _$SigninformEvent {
  const factory SigninformEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SigninformEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SigninformEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory SigninformEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory SigninformEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
  const factory SigninformEvent.resetPasswordWithEmail() =
      ResetPasswordWithEmail;
}
