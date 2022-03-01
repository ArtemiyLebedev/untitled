import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          body: Users()
      ),
    );
  }
}

class Users extends StatefulWidget{
  const Users({Key? key}) : super(key: key);

  @override
  State <Users> createState() => _Users();
}

class _Users extends State<Users> {

    List<String> surname = <String> [
    'Kolobov',
    'Kotov',
    'Bokov',
    'Rotov',
    'Putin',
    'Biden',
    'Gogotov',
    'listov',
    'Radova',
    'Striuchkov',
    'Popov',
    'Zadov'
  ];

   List<String> number = <String>[
    '21524',
    '45655',
    '98764',
    '87542',
    '87356',
    '97688',
    '57391',
    '09942',
    '12354',
    '56473',
    '99944',
    '55992',
    '11226',
  ];

  @override
  Widget build(BuildContext context) => ListView.builder(
        padding: const EdgeInsets.all(3),
        itemCount:surname.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Container(
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.lightBlue[400],
                      border: Border.all(width: 2, color: Colors.blueGrey)
                  ),
                      child: Center(child: Text(
                        '${surname[index]} : ${number[index]}',
                         style: TextStyle(fontWeight: FontWeight.bold)
                   ),
                ),
              ),
            selected: surname[index] == index,
            onTap: (){
              setState (() {
                surname[index];
              });
            },
            );
        },
      );
  }


/*
class SimpleListSeparated extends StatelessWidget {
  SimpleListSeparated({Key? key}) : super(key: key);

  var list = new List<int>.generate(50, (i) => i + 1);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return MyListItem(number: index);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(thickness: 3,),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item $index'),
          selected: index == _selectedIndex,
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
        );
      },
    );
  }
}
*/