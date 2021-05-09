import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home',
              style: TextStyle(fontSize: 22, color: Colors.green),
            ),
            Text(
              'Page',
              style: TextStyle(fontSize: 22, color: Colors.white),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.of(context).pushNamed('AddNote');
        },
        child: Icon(
          Icons.edit,
          color: Colors.black,
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 150,
                child: ListTile(
                    tileColor: Colors.green,
                    //trailing: Icon(Icons.edit),
                    title: Column(
                      children: [
                        Text(
                          'First Note',
                          style: TextStyle(fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                              'Notes app done with Flutter and integrated with cloud firestore and user authentication',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
