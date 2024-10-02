import 'package:demo/Databases/dbHelper.dart';
import 'package:demo/widgets/UiHelper.dart';
import 'package:flutter/material.dart';

class AppDataScreen extends StatefulWidget {
  const AppDataScreen({super.key});

  @override
  State<AppDataScreen> createState() => _AppDataScreenState();
}

class _AppDataScreenState extends State<AppDataScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add data Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomTextField(
                titleController, "Enter title", Icons.title),
            UiHelper.CustomTextField(
                descController, "Enter desc", Icons.description),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {
              // DbHelper.db
            }, child: Text("Add Data"))
          ],
        ),
      ),
    );
  }
}
