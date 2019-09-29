import 'package:flutter/material.dart';
import 'screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todey_flutter/models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      builder: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

/*

class MyApp extends StatelessWidget {
  final String data = 'Top Secret code';
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      builder: (context) => Data(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: MyText() ),
          body: Level1(),
        ),
      ),
    );
  }
}

class Data extends ChangeNotifier{
  String data = 'Some data';

  void changeString(String newString){
    data = newString;
    //method availble ChangeNotifier so everybody that is lestining can rebuild
    notifyListeners();
  }

}


class Level1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Level2(), );
  }
}

class Level2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyTextField(),
        Level3(),
      ],
    );
  }
}


class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<Data>(context, listen: false).data);
  }
}


class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newText){
        Provider.of<Data>(context).changeString(newText);
      },
    );
  }
}

class Level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<Data>(context).data);
  }
}
*/
