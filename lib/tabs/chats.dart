import 'package:flutter/material.dart';

class chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var chatsData;
    return ListView.builder(
      itemCount: chatsData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(height: 0.1),
          new ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(chatsData[i]),
            ),
          ),
        ],
      ),
    );
  }
}

class Context {}
