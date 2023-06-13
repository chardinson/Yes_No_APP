import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();
  final ScrollController chatScrollController = ScrollController();
  List<Message> messagesList = [];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final sendMessage = Message(text: text, fromWho: FromWho.me);
    messagesList.add(sendMessage);
    if (text.endsWith('?')) {
      herReplay();
    }
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> herReplay() async {
    final herMessage = await getYesNoAnswer.getAnswer();
    messagesList.add(herMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut);
  }
}
