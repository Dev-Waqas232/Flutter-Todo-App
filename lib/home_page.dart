import 'package:flutter/material.dart';
import 'package:todo_app/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Center(child: Text("Todo App")),
        backgroundColor: Colors.yellow,
      ),
      body: ListView(
        children: [
          TodoTile(
            taskName: "Finish Project",
            taskCompleted: false,
            onChanged: (p0) {},
          )
        ],
      ),
    );
  }
}
