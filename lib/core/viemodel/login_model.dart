import 'package:flutter/widgets.dart';
import 'package:learing_mvvm/core/services/authentication_service.dart';
import 'package:learing_mvvm/locator.dart';


enum ViewState {Idle, Busy}

class LoginModel extends ChangeNotifier{
  final AuthenticationService _authenticationService = locator<AuthenticationService>();

  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setState(ViewState viewState){
    _state = viewState;
    notifyListeners();
  }

  Future<bool> login(String userIdText) async {
    setState(ViewState.Busy);

    var userId = int.tryParse(userIdText);
    var success = await _authenticationService.login(userId);
    setState(ViewState.Idle);

    return success;

  }
}