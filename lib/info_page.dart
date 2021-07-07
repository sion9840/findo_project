import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('정보'),
      ),
      body: Center(
        child: Text(
          '학생들의 수월한 진로진학을 위한 대학 진학 정보 사이트 입니다.\nMade by 이민승',
          style: Theme.of(context).textTheme.bodyText1,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}