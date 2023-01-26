import 'package:flutter/material.dart';
import 'package:flutter_screen_1/tasks/components/input.dart';
import 'package:flutter_screen_1/tasks/data/task_inherited.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({
    Key? key,
  }) : super(key: key);

  //final BuildContext taskContext;

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController difficultyController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController periodController = TextEditingController();

  List<String> list = ['Anytime', 'Morning', 'Afternoon', 'Night'];

  final _formKey = GlobalKey<FormState>();

  bool valueValidator(String? value) {
    if (value != null && value.isEmpty) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final taskContext =
        ModalRoute.of(context)!.settings.arguments as BuildContext;

    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(40, 42, 55, 1),
        appBar: AppBar(
          title: const Text('Create New Task'),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: 375,
            height: 650,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(43, 45, 66, 1),
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(69, 0, 0, 0),
                  blurRadius: 5,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              children: [
                /*NOME DA TAREFA */
                Input(
                  keyboardType: TextInputType.name,
                  controller: nameController,
                  hintText: 'Name',
                  validator: (String? value) {
                    if (valueValidator(value)) {
                      return 'Insert task name!';
                    }
                    return null;
                  },
                ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //       left: 30, right: 30, top: 35, bottom: 10),
                //   child: Material(
                //     elevation: 5,
                //     borderRadius: BorderRadius.circular(40),
                //     shadowColor: const Color.fromARGB(255, 0, 0, 0),
                //     child: TextFormField(
                //       validator: (String? value) {
                //         if (value != null && value.isEmpty) {
                //           return 'Insert task name!';
                //         }
                //         return null;
                //       },
                //       controller: nameController,
                //       decoration: InputDecoration(
                //           hintText: 'Name',
                //           fillColor: const Color.fromRGBO(40, 42, 55, 1),
                //           filled: true,
                //           enabledBorder: OutlineInputBorder(
                //               borderSide: const BorderSide(
                //                 width: 0,
                //                 color: Color.fromRGBO(40, 42, 55, 1),
                //               ),
                //               borderRadius: BorderRadius.circular(40)),
                //           focusedBorder: UnderlineInputBorder(
                //               borderRadius: BorderRadius.circular(40),
                //               borderSide: const BorderSide(
                //                   width: 1,
                //                   color: Color.fromRGBO(40, 42, 55, 1))),
                //           hintStyle: const TextStyle(
                //               color: Colors.white,
                //               fontWeight: FontWeight.bold)),
                //       textAlign: TextAlign.center,
                //     ),
                //   ),
                // ),
                /*DIFICULDADE*/
                Input(
                  keyboardType: TextInputType.number,
                  controller: difficultyController,
                  hintText: 'Difficulty',
                  validator: (value) {
                    int? valor = int.tryParse(value ?? "");
                    if (valor == null) {
                      return "Enter task difficulty between 1 and 5 (erro letras)";
                    }
                    if (value!.isEmpty || valor > 5 || valor < 1) {
                      return 'Enter task difficulty between 1 and 5';
                    }
                    return null;
                  },
                ),
                /*PERIODO*/
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(40),
                    shadowColor: const Color.fromARGB(255, 0, 0, 0),
                    child: DropdownButtonFormField(
                      items: list.map((e) {
                        return DropdownMenuItem(
                          alignment: AlignmentDirectional.center,
                          value: e,
                          child: Text(e),
                        );
                      }).toList(),
                      hint: const Text(
                        'Period',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onChanged: (text) {
                        setState(() {});
                      },
                      dropdownColor: const Color.fromRGBO(40, 42, 55, 1),
                      borderRadius: BorderRadius.circular(20),
                      decoration: InputDecoration(
                          fillColor: const Color.fromRGBO(40, 42, 55, 1),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(40, 42, 55, 1),
                                  width: 0))),
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                /*URL IMAGEM */
                Input(
                  hintText: 'Image',
                  keyboardType: TextInputType.url,
                  controller: imageController,
                  validator: (value) {
                    if (valueValidator(value)) {
                      return 'Insert URL image!';
                    }
                    return null;
                  },
                ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //       left: 30, right: 30, top: 10, bottom: 10),
                //   child: Material(
                //     elevation: 5,
                //     borderRadius: BorderRadius.circular(40),
                //     shadowColor: const Color.fromARGB(255, 0, 0, 0),
                //     child: TextFormField(
                //       validator: (value) {
                //         if (valueValidator(value)) {
                //           return 'Insert URL image!';
                //         }
                //         return null;
                //       },
                //       keyboardType: TextInputType.url,
                //       onChanged: (text) {
                //         setState(() {});
                //       },
                //       controller: imageController,
                //       decoration: InputDecoration(
                //           hintText: 'Image',
                //           fillColor: const Color.fromRGBO(40, 42, 55, 1),
                //           filled: true,
                //           enabledBorder: OutlineInputBorder(
                //               borderSide: const BorderSide(
                //                 width: 0,
                //                 color: Color.fromRGBO(40, 42, 55, 1),
                //               ),
                //               borderRadius: BorderRadius.circular(40)),
                //           hintStyle: const TextStyle(
                //               color: Colors.white,
                //               fontWeight: FontWeight.bold)),
                //       textAlign: TextAlign.center,
                //     ),
                //   ),
                // ),
                /* IMAGEM */
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                      //color: Color.fromRGBO(40, 42, 55, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        imageController.text,
                        errorBuilder: (BuildContext context, Object exception,
                            StackTrace? stackTrace) {
                          return Image.asset("assets/images/no-image.png");
                        },
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      //print(nameController.text);
                      //print(int.parse(difficultyController.text));
                      //print(imageController.text);
                      TaskInherited.of(taskContext).newTask(
                          nameController.text,
                          int.parse(difficultyController.text),
                          imageController.text);
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Task Created')));
                      Navigator.of(context).pop();
                    }
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white)),
                  child: const Text(
                    'Create',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
