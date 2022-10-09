import 'package:flutter/material.dart';

import '../data/model/user.dart';

class ListWidget extends StatelessWidget {
  ListWidget({Key? key,required this.users}) : super(key: key);

  List<User> users;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      padding: const EdgeInsets.all(8.0),
      itemBuilder: (context,index){
        return Card(
          color: Colors.greenAccent,
          elevation: 3,
          child: ListTile(
            title: Text(users[index].title!,style: const TextStyle(fontWeight: FontWeight.w400,color: Colors.black)),
            subtitle: Text(users[index].completed!.toString(),style: const TextStyle(fontWeight: FontWeight.w600,color: Colors.black),
          ),
          )
        );
      },
    );
  }
}
