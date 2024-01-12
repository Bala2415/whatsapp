import 'package:flutter/material.dart';
import 'package:whatsapp/tabs/call.dart';
import 'package:whatsapp/tabs/camera.dart';
import 'package:whatsapp/tabs/chats.dart';
import 'package:whatsapp/tabs/status.dart';

void main() => runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: new Color(0xff07fef4),
        hintColor: new Color(0xff25d366),
      ),
      home: new MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('telegram'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.camera),
            ),
            Tab(text: 'CHATS'),
            Tab(text: 'STATUS'),
            Tab(text: 'CALL'),
          ],
        ),
      ),
      body: new TabBarView(controller: _tabController, children: <Widget>[
        new camera(),
        new chats(),
        new status(),
        new call(),
      ]),
      floatingActionButton: _tabController.index == 0
          ? FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.camera),
            )
          : _tabController.index == 1?
      FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.message),
            ):
      _tabController.index == 2?
      FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.camera_alt),
      ):
      FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.contacts),
      ),
    );
  }
}
