import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  Input(
      {super.key,
      this.keyboardType,
      this.validator,
      this.controller,
      required this.hintText});

  String? Function(String?)? validator;
  TextInputType? keyboardType;
  TextEditingController? controller;
  String hintText;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    widget.controller;
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(40),
        shadowColor: const Color.fromARGB(255, 0, 0, 0),
        child: TextFormField(
          // validator: (value) {
          //   if (value!.isEmpty ||
          //       int.parse(value) > 5 ||
          //       int.parse(value) < 1) {
          //     return 'Enter task difficulty between 1 and 5';
          //   }
          //   return null;
          // },
          validator: widget.validator,
          keyboardType: widget.keyboardType,
          controller: widget.controller,
          // keyboardType: TextInputType.number,
          // controller: difficultyController,
          decoration: InputDecoration(
              //hintText: 'Difficulty',
              hintText: widget.hintText,
              fillColor: const Color.fromRGBO(40, 42, 55, 1),
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 0,
                    color: Color.fromRGBO(40, 42, 55, 1),
                  ),
                  borderRadius: BorderRadius.circular(40)),
              hintStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
