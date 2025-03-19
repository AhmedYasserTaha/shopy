import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'text_feild_state.dart';

class TextFeildCubit extends Cubit<TextFeildState> {
  bool isPasswordVisible = true; // الحالة الأولية: الباسورد مخفي

  TextFeildCubit() : super(TextFeildInitial());

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    emit(TextFeildPasswordVisibilityChanged(isPasswordVisible));
  }
}
