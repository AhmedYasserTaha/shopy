part of 'text_feild_cubit.dart';

@immutable
sealed class TextFeildState {}

final class TextFeildInitial extends TextFeildState {}

final class TextFeildPasswordVisibilityChanged extends TextFeildState {
  final bool isPasswordVisible;
  TextFeildPasswordVisibilityChanged(this.isPasswordVisible);
}
