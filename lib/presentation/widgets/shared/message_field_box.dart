import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();
    final outLineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));
    return TextFormField(
      onTapOutside: (event) => focusNode.unfocus(),
      focusNode: focusNode,
      controller: textController,
      decoration: InputDecoration(
          enabledBorder: outLineInputBorder,
          focusedBorder: outLineInputBorder,
          filled: true,
          suffixIcon: IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              final textValue = textController.value.text;
              textController.clear();
              onValue(textValue);
            },
          )),
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus();
        onValue(value);
      },
    );
  }
}
