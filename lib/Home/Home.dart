import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signinemail/Model/UserIdModel.dart';
import 'package:signinemail/Service/AuthService.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UserIdModel>(
      stream: AuthService().onAuthStateChanged,
      builder: (BuildContext context,snapshot){
        if(snapshot.hasData){
        return  Scaffold(
            body: Center(
              child: Container(
                child: Column(
                  children: [
                    Text("Hello Welcome Back ${snapshot.data.uid}"),
                    RaisedButton(
                      onPressed: signOut,
                      child: Text("Sign Out"),
                    )
                  ],
                ),
              ),
            ),
          );
        }else{
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }


  void signOut(){
    AuthService auth = AuthService();
    auth.signOut();
    

  }
}
