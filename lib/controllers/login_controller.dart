import 'package:get/get.dart';

enum LoginState { getPhoneNumber, otp, register, chooseLanguage }

class LoginController extends GetxController {
  Rx<LoginState> state = LoginState.getPhoneNumber.obs;

  RxBool isLoading = false.obs;

  void login() {
    state.value = LoginState.otp;
    update();
  }

  void otp() {
    state.value = LoginState.getPhoneNumber;
    update();
  }
}
