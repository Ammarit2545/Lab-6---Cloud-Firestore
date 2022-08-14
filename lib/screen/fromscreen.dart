import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/model/student.dart';
import 'package:form_field_validator/form_field_validator.dart';

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
                  validator:
                      RequiredValidator(errorText: "กรุณาป้อนชื่อด้วยครับ"),
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
                  validator:
                      RequiredValidator(errorText: "กรุณาป้อนนามสกุลด้วยครับ"),
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
                  validator: MultiValidator([
                    EmailValidator(errorText: "รูปแบบไม่ถูกต้อง"),
                    RequiredValidator(errorText: "กรุณาป้อนอีเมลด้วยครับ ^^")
                  ]),
                  onSaved: (String email) {
                    myStudent.email = email;
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "คะแนน",
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  validator:
                      RequiredValidator(errorText: "กรุณาป้อนคะแนนด้วยครับ"),
                  onSaved: (String score) {
                    myStudent.score = score;
                  },
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: Text(
                        "บันทึกข้อมูล",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        var formKey;
                        if (formKey.currentState.validate()) {
                          formKey.currentState.save();
                          print(
                              "ข้อมูล = ${myStudent.fname} ${myStudent.lname} ${myStudent.email} ${myStudent.score}");
                        }
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
