import 'package:first_app/Models/task.dart';
import 'package:flutter/material.dart';

class todocard extends StatelessWidget {
  const todocard({
    super.key,
    required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: const Color.fromARGB(255, 110, 174, 247),
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    task.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Icon(Icons.check),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(task.date.toString()),
                  const Icon(Icons.delete),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(task.description),
                  const Text("il y a 10min"),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
