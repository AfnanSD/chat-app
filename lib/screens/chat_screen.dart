import 'package:chat_app/widgets/chats/messages.dart';
import 'package:chat_app/widgets/chats/new_message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Chat app'),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: const Icon(Icons.logout),
          ),
          // DropdownButton(
          //   items: [
          //     DropdownMenuItem(
          //       value: 'log out',
          //       child: Row(
          //         children: const [
          //           Icon(Icons.logout),
          //           Text('Log out'),
          //         ],
          //       ),
          //     )
          //   ],
          //   onChanged: (value) {
          //     if (value == 'log out') {}
          //   },
          //   icon: const Icon(Icons.more_vert),
          // )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Messages(),
          ),
          const NewMessage(),
        ],
      ),
    );
  }
}
