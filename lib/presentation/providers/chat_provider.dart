import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messagesList = [
    Message(text: 'Saludos', fromWho: FromWho.me),
    Message(text: 'Tengo un problema con mi cuenta', fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    final sendMessage = Message(text: text, fromWho: FromWho.me);
    messagesList.add(sendMessage);
    notifyListeners();
  }
}
