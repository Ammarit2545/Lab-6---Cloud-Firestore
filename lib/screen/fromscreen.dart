import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FromScreen extends StatefulWidget {
  const FromScreen({Key? key}) : super(key: key);

  @override
  _FromScreenState createState() => _FromScreenState();
}

class _FromScreenState extends State<FromScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("แบบฟอร์มบันทึกคะแนนสอบ")),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              Text(
                "ชื่อ",
                style: TextStyle(fontSize: 20),
              ),
              TextFormField(),
              SizedBox(
                height: 15,
              ),
              Text(
                "นามสกุล",
                style: TextStyle(fontSize: 20),
              ),
              TextFormField(),
              SizedBox(
                height: 15,
              ),
              Text(
                "Email",
                style: TextStyle(fontSize: 20),
              ),
              TextFormField(),
              SizedBox(
                height: 15,
              ),
              Text(
                "คะแนน",
                style: TextStyle(fontSize: 20),
              ),
              TextFormField(),
              SizedBox(
                child: ElevatedButton(
                    child: Text(
                      "บันทึกข้อมูล",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
