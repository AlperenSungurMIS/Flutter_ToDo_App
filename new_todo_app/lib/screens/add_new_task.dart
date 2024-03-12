import 'package:flutter/material.dart';

class AddNewTasks extends StatelessWidget {
  const AddNewTasks({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidht = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 104, 104, 104),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: deviceWidht,
              height: deviceHeight / 10,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 131, 67, 67),
                image: DecorationImage(
                    image: AssetImage(
                        "C:/Users/sungu/OneDrive/Belgeler/flutterTODO/new_todo_app/lib/assets/images/add_new_task_header.png"),
                    fit: BoxFit.cover),
              ),
              child: Row(children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.close,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                const Expanded(
                    child: Text(
                  "Yeni Görev Ekle",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 21),
                  textAlign: TextAlign.center,
                ))
              ]),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Görev Başlığı")),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration:
                    InputDecoration(filled: true, fillColor: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Kategori"),
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          duration: Duration(milliseconds: 300),
                          content: Text("Kategori Seçildi")));
                    },
                    child: Image.asset("lib/assets/images/category_1.png"),
                  ),
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          duration: Duration(milliseconds: 300),
                          content: Text("Kategori Seçildi")));
                    },
                    child: Image.asset("lib/assets/images/category_2.png"),
                  ),
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          duration: Duration(milliseconds: 300),
                          content: Text("Kategori Seçildi")));
                    },
                    child: Image.asset("lib/assets/images/category_3.png"),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text("Tarih"),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                  filled: true, fillColor: Colors.white),
                            ))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                         Text("Saat"),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                  filled: true, fillColor: Colors.white),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 10), child: Text("Notlar")),
            const SizedBox(
              height: 300,
              child: TextField(
                expands: true,
                maxLines: null,
                decoration: InputDecoration(
                    filled: true, fillColor: Colors.white, isDense: true),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Kaydet"))
          ]),
        ),
      ),
    );
  }
}
