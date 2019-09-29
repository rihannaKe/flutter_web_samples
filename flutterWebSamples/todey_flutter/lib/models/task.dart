class Task {
  final String name;
  bool isDone;

  Task({this.name, this.isDone = false});

  //this.isDone = false significa default value false
  void toggleDone() {
    isDone = !isDone;
  }
}
