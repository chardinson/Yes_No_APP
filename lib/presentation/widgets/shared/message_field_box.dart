import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final outLineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: outLineInputBorder,
          focusedBorder: outLineInputBorder,
          filled: true,
          suffixIcon: IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {},
          )),
      onFieldSubmitted: (value) {},
    );
  }
}
