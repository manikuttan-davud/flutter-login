import 'dart:js_util';
import 'dart:ui';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_8/screens/login.dart';
class screenSplash extends StatefulWidget {
  const screenSplash({super.key});

  @override
  State<screenSplash> createState() => _screenSplashState();
}

class _screenSplashState extends State<screenSplash> {
  @override
  void initState() {
    goToLogin();
    super.initState();
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Facebook_Messenger_logo_2020.svg/2048px-Facebook_Messenger_logo_2020.svg.png',
      height: 300,),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  Future<void>goToLogin()async{
Future.delayed(Duration(seconds: 3));
Navigator.of(context).push(MaterialPageRoute(builder: ((cxt) =>screenLogin() )));
}
}
