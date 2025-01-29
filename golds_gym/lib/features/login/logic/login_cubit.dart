import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:golds_gym/features/login/logic/login_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> login(String userName, String password) async {
    emit(LoginLoading());

    await Future.delayed(Duration(seconds: 2));

    if (userName == 'admin' && password == '123456') {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('userName', userName);
      await prefs.setBool('isLoggedIn', true);

      emit(LoginSuccess());
    } else {
      emit(LoginFailure('Invalid email or password'));
    }
  }

  Future<void> checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    if (isLoggedIn) {
      emit(LoginSuccess());
    } else {
      emit(LoginInitial());
    }
  }
}
