import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/violet_background.png'),
                fit: BoxFit.cover
            )
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(flex: 1,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Good Info',
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    'Good Way',
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Lottie.network(
                'https://assets7.lottiefiles.com/packages/lf20_jm7mv1ib.json',
                width: 500,
                height: 500,
              ),
            ],
          ),
        ),
      )
    );
  }
}