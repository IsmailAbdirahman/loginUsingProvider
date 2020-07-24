




import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:signinemail/Model/UserIdModel.dart';

import 'DisplayData.dart';
import 'SignInSignOut//SignUpView.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return either LoginPage or DisplayData widget
    final user = Provider.of<UserIdModel>(context);
    print("TTTTTTTTTTTTTTTTTTTTTTTTT $user");
    if (user == null ) {
      return SignUpView();
    } else {
      return DisplayData();
    }
  }
}
