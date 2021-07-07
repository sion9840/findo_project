import 'package:findo_project/spec_college_page.dart';
import 'package:flutter/material.dart';

import 'college_info.dart';

class AllCollegePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('모든 대학'),
      ),
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: all_college.length,
        itemBuilder: (BuildContext context, int index) {
          String college_name = all_college.keys.toList()[index];
          return ListTile(
            title: Text(
              college_name,
              style: Theme.of(context).textTheme.headline3,
            ),
            subtitle: Text(
              all_college[college_name]['소개'],
              style: Theme.of(context).textTheme.bodyText1,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SpecCollegePage(college_name)),
              );
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
    );
  }
}