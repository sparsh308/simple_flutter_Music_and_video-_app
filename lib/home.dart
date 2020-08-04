import 'package:flutter/material.dart';
import 'package:music_app/offline.dart';
import 'package:music_app/online.dart';

myhome() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          bottom: TabBar(
            tabs: [
              new Container(
                child: new Tab(text: 'Online'),
              ),
              new Container(
                child: new Tab(text: 'Offline'),
              ),
            ],
          ),
          title: Center(
            child: Text(
              'Music world',
              style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            new onlineScreen(),
            new offlineScreen(),
          ],
        ),
      ),
    ),
  );
}
