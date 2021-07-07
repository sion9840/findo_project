import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:findo_project/all_college_page.dart';
import 'package:findo_project/college_info.dart';
import 'package:findo_project/spec_college_page.dart';
import 'package:flutter/material.dart';

import 'info_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text('모든 대학'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllCollegePage()),
                );
              },
            ),
            ListTile(
              title: Text('정보'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoPage()),
                );
              },
            ),
          ]
        )
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('CAI'),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: 300,
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    DefaultTextStyle(
                      style: Theme.of(context).textTheme.headline1,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('진로진학정보를 찾아보세요!'),
                          WavyAnimatedText('대학에 대한 궁금증을 해결해보세요!'),
                        ],
                        isRepeatingAnimation: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '추천 대학',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            SizedBox(height: 20,),
                            ListView.separated(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: recommend_college.length,
                              itemBuilder: (BuildContext context, int index) {
                                String college_name = recommend_college.keys.toList()[index];
                                return ListTile(
                                  title: Text(
                                    college_name,
                                    style: Theme.of(context).textTheme.headline3,
                                  ),
                                  subtitle: Text(
                                    recommend_college[college_name]['소개'],
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
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '뜨는 대학',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            SizedBox(height: 20,),
                            ListView.separated(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: up_college.length,
                              itemBuilder: (BuildContext context, int index) {
                                String college_name = up_college.keys.toList()[index];
                                return ListTile(
                                  title: Text(
                                    college_name,
                                    style: Theme.of(context).textTheme.headline3,
                                  ),
                                  subtitle: Text(
                                    up_college[college_name]['소개'],
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                color: Colors.black,
                elevation: 0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllCollegePage()),
                  );
                },
                child: Text(
                  '모든 대학정보 찾아보기',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}