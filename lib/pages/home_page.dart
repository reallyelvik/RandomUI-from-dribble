// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mentalapp/utils/emoji_face.dart';
import 'package:mentalapp/utils/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.blue[800],
      ),
      backgroundColor: Colors.blue[800],
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              //first row

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                //Hi Elvik
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text(
                    "Hi User,",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '23 Jan, 2024',
                    style: TextStyle(color: Colors.blue[200]),
                  )
                ]),

                //Notification
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.all(12),
                  child: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                )
              ]),
              const SizedBox(
                height: 25,
              ),
              //search bar

              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.all(12),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              //how do you feel today

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "How do you feel today?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),

              //emojis

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //bad
                  Column(children: [
                    emojiFace(emojis: '😞'),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Bad",
                      style: TextStyle(color: Colors.white),
                    )
                  ]),

                  //fine
                  Column(children: [
                    emojiFace(
                      emojis: '😐',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Fine",
                      style: TextStyle(color: Colors.white),
                    ),
                  ]),

                  //well
                  Column(children: [
                    emojiFace(
                      emojis: '🙂',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Well",
                      style: TextStyle(color: Colors.white),
                    ),
                  ]),

                  //excellent
                  Column(children: [
                    emojiFace(
                      emojis: '😀',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Excellent",
                      style: TextStyle(color: Colors.white),
                    ),
                  ])
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 15, left: 25, right: 25),
            color: Colors.grey[200],
            child: ListView(
              children: [
                //exercise heading
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Exercises",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Icon(Icons.more_horiz),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                Column(
                  children: [
                    ExerciseTile(
                      icon: Icons.favorite,
                      exerciseName: 'Speaking Skills',
                      numberOfExercise: 15,
                      color: Colors.orange,
                    ),
                    ExerciseTile(
                      icon: Icons.person,
                      exerciseName: 'Reading Skills',
                      numberOfExercise: 15,
                      color: Colors.green,
                    ),
                    ExerciseTile(
                      icon: Icons.start,
                      exerciseName: 'Writing Skills',
                      numberOfExercise: 15,
                      color: Colors.pink,
                    ),
                  ],
                ),

                //listview of exercises
                // ExerciseTile(
                //   icon: Icons.favorite,
                //   exerciseName: 'Speaking Skills',
                //   numberOfExercise: 15,
                //   color: Colors.orange,
                // ),
                // ExerciseTile(
                //   icon: Icons.person,
                //   exerciseName: 'Reading Skills',
                //   numberOfExercise: 15,
                //   color: Colors.green,
                // ),
                // ExerciseTile(
                //   icon: Icons.start,
                //   exerciseName: 'Writing Skills',
                //   numberOfExercise: 15,
                //   color: Colors.pink,
                // ),
              ],
            ),
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.map_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: ''),
        ],
      ),
    );
  }
}
