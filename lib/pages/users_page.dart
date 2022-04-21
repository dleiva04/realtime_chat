import 'package:flutter/material.dart';
import 'package:realtime_chat/models/user.dart';

class UsersPage extends StatefulWidget {
  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  final users = [
    User(
      id: "1",
      name: "David",
      lastName: "Leiva",
      email: "david.leiv04@gmail.com",
      online: true,
    ),
    User(
      name: "Test1",
      id: "2",
      lastName: "1",
      email: "test1@test.com",
      online: false,
    ),
    User(
      id: "3",
      name: "Test2",
      lastName: "2",
      email: "test2@test.com",
      online: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Chats'),
      ),
      body: ListView.separated(
        itemBuilder: (_, i) => ListTile(
          title: Text(users[i].name),
          leading: Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: users[i].online ? Colors.green : Colors.transparent,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (_, i) => Divider(),
        itemCount: users.length,
      ),
    );
  }
}
