import 'dart:math';

import 'package:flutter/material.dart';
import 'newList.dart';
import 'components/custom_text_field.dart';
import 'components/custom_buttons.dart';

class AddStd extends StatefulWidget {
  const AddStd({super.key});

  @override
  State<AddStd> createState() => _AddStdState();
}

class _AddStdState extends State<AddStd> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController fatherNameController= TextEditingController();

  void saveStudent(){
    String name =nameController.text;
    String fatherName=fatherNameController.text;
    if(name.isNotEmpty || fatherName.isNotEmpty){

      final newStudent = Student(name: name, fathername: fatherName,id: Random().nextInt(1000000));
      Navigator.pop(context, newStudent);
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text("Name and Father name can't be empty"),
            behavior: SnackBarBehavior.floating,
            duration: const Duration(seconds: 5),
            backgroundColor: Colors.black,


          ));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        spacing: 50,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(componentController: nameController, hintText: "name",),
          CustomTextField(componentController: fatherNameController, hintText: "father name",),
          CustomButtons(onButtonTap: (){saveStudent();},
            label: "Add", )//buttonIcon: Icons.add,)

        ],
      ),
    );
  }
}