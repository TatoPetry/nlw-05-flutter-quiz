import 'package:DevQuiz/core/app_gradients.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // Ao contruir a splash page esperro um tempo para carregar para home da aplicação
    Future.delayed(Duration(seconds: 2))
      .then((_) => Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
          builder: (context) => HomePage())
          )
        );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.linear,

        ),
        child: Center(
          child: Image.asset(AppImages.logo),
        ),
      )
    );
  }
}