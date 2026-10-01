import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'add_std.dart';
import 'edit_List.dart';

//
// void main(){
//   runApp(const StudentApp());
// }


class Student{
  String name;
  String fathername;
  int id;
  List<String>?subjects;

  Student({
    required this.name,
    required this.fathername,
    required this.id,
    this.subjects,
  });

}


class StudentApp extends StatefulWidget {
  const StudentApp({super.key});

  @override
  State<StudentApp> createState() => _StudentAppState();
}

class _StudentAppState extends State<StudentApp> {

  List<Student>students =[Student(name: 'Alina', fathername: 'fathername', id: 1),
    Student(name: 'Sara', fathername: 'fathername2', id:2),Student(name: 'A', fathername: 'fathername3', id:3),
    Student(name: 'Alina2', fathername: 'fathername4', id:4)];

  void removeStudent(int index){
    setState(() {
      students.removeAt(index);
    });
  }
  void editStudents(Student StudentModalForEdit) async{
    final result= await Navigator.push(context, MaterialPageRoute(builder: (context) => EditList(StudentModalForEdit: StudentModalForEdit,)),);
    int foundIndex= students.indexWhere((student)=>student.id ==result.id);
    students[foundIndex]=result;
    setState(() {

    });
  }

  Widget s_info(Student studentObject, int index){

    return
      Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 75,
          width: 300,
          padding: const EdgeInsets.all(10),
          //margin: const EdgeInsets.symmetric(16,16),
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(' ID:${studentObject.id}\n Name: ${studentObject.name} \n fathername: ${studentObject.fathername} \t'),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap: (){editStudents(studentObject);},

                    child: Container(padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.edit),),
                  ),
                ),
                InkWell(
                  onTap: () {
                    removeStudent(index);
                  },
                  child: Container(padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.delete),
                  ),
                )
              ],)
            ],
          ),


        ),
      );

  }
  void Add_info(String Name, String father_name) async{
    final result= await Navigator.push(context,
        MaterialPageRoute(builder: (context) => AddStd(), )
    );
    students.add(result);
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.lightBackgroundGray,
      appBar: AppBar(title: Text("Classic Todo App"),
      ),
      body:

      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text("Students", //textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'TimesNewRoman',

                ),),
              ListView.builder(
                  itemCount: students.length,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return s_info(Student(name: students[index].name, fathername: students[index].fathername,id:students[index].id), index);
                  })
            ],
          ),
        ),
      ),
      floatingActionButton:
      InkWell(
        onTap: (){
          //students.add(Student(name: 'R', fathername: 'fathername5'));setState(() {});
          Add_info('Name', 'father_name');

        },
        child: Container(
          child: Icon(Icons.add, size: 35),
          decoration: BoxDecoration(shape: BoxShape.circle,
              color: Colors.white),
        ),
      ),


    );
  }
}
