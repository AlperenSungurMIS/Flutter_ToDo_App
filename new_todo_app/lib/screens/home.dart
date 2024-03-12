import 'package:flutter/material.dart';
import 'package:new_todo_app/screens/add_new_task.dart';
import 'package:new_todo_app/todoitem.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> todo = ["Ders çalış", " Sinemaya git", "Spor yap"];

  List<String> completed = [" Oyun", " okul"];

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidht = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 104, 104, 104),
          body: Column(children: [
            Container(
              width: deviceWidht,
              height: deviceHeight / 3,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  image: DecorationImage(
                      image: AssetImage("lib/assets/images/header.png"),
                      fit: BoxFit.cover)),
              child: const Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "20 Ocak 2024",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "My Todo List",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ]),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: SingleChildScrollView(
                    child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: todo.length,
                  itemBuilder: (context, index) {
                    return TodoItem(
                      title: todo[index],
                    );
                  },
                )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Tamamlandı",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: SingleChildScrollView(
                    child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: completed.length,
                  itemBuilder: (context, index) {
                    return TodoItem(title: completed[index]);
                  },
                )),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddNewTasks()));
                },
                child: const Text("Yeni Görev Ekle"))
          ]),
        ),
      ),
    );
  }
}
