import 'dart:convert';

class Task{
  String title;
  String description;
  DateTime date;
  bool status;

  Task({
    required this.title,
    required this.description,
    required this.date,
    required this.status,
  });

  String toJsonString(){
    var objet = {
      "date" : date,
      "title" : title,
      "description" : description,
      "status" : status,
    };

    return jsonEncode(objet);
  }

  factory Task.jsontoTask(String objet){
    var obj = jsonDecode(objet);
    Task task = Task(

    date : obj["date"],
    title : obj["title"],
    description : obj["description"],
    status : obj["statut"]
    );
    return task;
  }
}