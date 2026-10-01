import 'package:flutter/material.dart';
import 'newList.dart';

import 'components/custom_text_field.dart';
import 'components/custom_buttons.dart';

class EditList extends StatefulWidget {
  final Student StudentModalForEdit;
  const EditList({super.key, required this.StudentModalForEdit});

  @override
  State<EditList> createState() => _EditListState();
}

class _EditListState extends State<EditList> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController fatherNameController= TextEditingController();

  void SaveEditStudents(){
    String name = nameController.text;
    String fatherName=fatherNameController.text;
    final newStudent=Student(name: name, fathername: fatherName, id: widget.StudentModalForEdit.id);
    Navigator.pop(context,newStudent);

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController.text=widget.StudentModalForEdit.name;
    fatherNameController.text=widget.StudentModalForEdit.fathername;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        spacing: 50,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.StudentModalForEdit.id.toString()),
          CustomTextField(componentController: nameController,hintText: "name",),
          CustomTextField(componentController: fatherNameController,hintText: "father name",),
          CustomButtons(label: "Save", buttonIcon: Icons.save,onButtonTap: (){
            SaveEditStudents();{}
          },)
          // InkWell(
          //   onTap: (){SaveEditStudents();},
          //   child: Container(
          //     height: 50,
          //     width: 180,
          //     decoration: BoxDecoration(color: Colors.indigo, borderRadius: BorderRadius.circular(15)),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Icon(Icons.save, color: Colors.white, size:25),
          //         Text("\t Save",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),)
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}