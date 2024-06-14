import 'package:flutter/material.dart';
import 'package:myapp/presentation/widgets/chat/my_message_bubble.dart';
import 'package:myapp/presentation/widgets/chat/user_message_bubble.dart';
import 'package:myapp/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(padding: EdgeInsets.all(4.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://i.postimg.cc/C1WpT0Hd/user.png'),
        ),),
        title: const Text('Fulano'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ( index % 2 == 0 )
                  ? const UserMessageBubble()
                  : const MyMessageBubble();
            })),
            ///caja de texto
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}