import 'package:findo_project/college_info.dart';
import 'package:flutter/material.dart';

class SpecCollegePage extends StatelessWidget {
  String college_name;

  SpecCollegePage(this.college_name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(college_name),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '소개',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          SizedBox(height: 20,),
                          Text(
                            all_college[college_name]['소개'],
                            style: Theme.of(context).textTheme.bodyText1,
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
                            '전형',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          SizedBox(height: 20,),
                          Text(
                            all_college[college_name]['전형'],
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}