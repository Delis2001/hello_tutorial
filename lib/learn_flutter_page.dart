// ignore_for_file: prefer_const_literals_to_create_immutables


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Action');
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset('assets/images/einstein.jpg'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.deepPurple,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.deepPurpleAccent,
            width: double.infinity,
            child: const Center(
              child: Text(
                'This is a text widget',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.deepOrange : Colors.blue),
            onPressed: () {
              debugPrint('Elevator Button');
            },
            child: const Text('Elevated Button'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('Outlined Button');
            },
            child: const Text('Outlined Button'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('Text Button');
            },
            child: const Text('Text Button'),
          ),
           GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  debugPrint('This is a row');
                },
                child:const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.teal,
                    ),
                    Text('Row Widget'),
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.teal,
                    ),
                  ],
                ),
          ),
              Switch(
                  value: isSwitch,
                  onChanged: (bool newBool) {
                    setState(() {
                      isSwitch = newBool;
                    });
                  }),
              Checkbox(
                  value: isCheckbox,
                  onChanged: (bool? newBool) {
                    setState(() {
                      isCheckbox = newBool;
                    });
                  }),
              Image.network('https://images.pexels.com/photos/15873132/pexels-photo-15873132/free-photo-of-painting-on-waterfall-and-portrait-of-einstein.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr = 7')
            ],
          )
        
      
     )
      );
  }
}
