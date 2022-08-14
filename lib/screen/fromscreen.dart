import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/model/student.dart';

class FromScreen extends StatefulWidget {
  const FromScreen({Key key}) : super(key: key);

  @override
  _FromScreenState createState() => _FromScreenState();
}

class _FromScreenState extends State<FromScreen> {
  final fromKey = GlobalKey<FormState>();
  Student myStudent = Student();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("แบบฟอร์มบันทึกคะแนนสอบ")),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: fromKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ชื่อ",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  onSaved: (String fname) {
                    myStudent.fname = fname;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "นามสกุล",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  onSaved: (String lname) {
                    myStudent.lname = lname;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Email",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  onSaved: (String email) {
                    myStudent.email = email;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "คะแนน",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  onSaved: (String score) {
                    myStudent.score = score;
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: Text(
                        "บันทึกข้อมูล",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        print("${myStudent.fname}");
                        print("${myStudent.lname}");
                        print("${myStudent.email}");
                        print("${myStudent.score}");
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
