import 'package:flutter/material.dart';
import 'package:learing_mvvm/core/viemodel/login_model.dart';
import 'package:learing_mvvm/locator.dart';
import 'package:learing_mvvm/ui/shared/app_color.dart';
import 'package:learing_mvvm/ui/widgets/login_header.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginModel>(
      create: (context) => locator<LoginModel>(),
      child: Consumer<LoginModel>(
        builder: (context, model, child) =>
            Scaffold(
              backgroundColor: backgroundColor,
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                LoginHeader(controller: _controller),
                  model.state == ViewState.Busy
                      ? CircularProgressIndicator()
                : FlatButton(
                    onPressed: () async {
                      var loginSuccess = await model.login(_controller.text);
                      if(loginSuccess){
                        // navigate to home viw

                      }
                    },
                    color: Colors.white,
                    child: Text('Login',
                      style: TextStyle(color: Colors.black),
                    ))
              ],),
            ),
      ),

    );
  }
}
