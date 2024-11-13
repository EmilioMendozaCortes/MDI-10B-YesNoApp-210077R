import 'package:flutter/material.dart';
import 'package:yes_no_app_210077/persentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app_210077/persentation/widgets/chat/other_message_bubble.dart';
import 'package:yes_no_app_210077/persentation/widgets/shared/message_field_box.dart';

class ChastScreen extends StatelessWidget {
  const ChastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://predis.ai/top-instagram-accounts/taylorswift.jpeg'),
          ),
        ),
        title: Text('Mi amor❤️'),
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
            Expanded(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return (index % 2 == 0)
                          ? const OtherMessageBubble()
                          : const MyMessageBubble();
                    })),

            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
