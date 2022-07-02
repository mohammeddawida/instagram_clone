import 'package:flutter/material.dart';

class YourStory extends StatelessWidget {
  const YourStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: 90,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
        CircleAvatar(
          radius: 35,
          backgroundColor: Colors.transparent,
          child: CircleAvatar(
            radius: 32,
            backgroundImage:
                  NetworkImage('https://i.pravatar.cc/150?img=2'),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text('Your Story')
      ]),
    );
  }
}

class AvatarStory extends StatelessWidget {
  final int index;
  final bool newStory;
  AvatarStory({Key? key,required this.index,required this.newStory}) : super(key: key);
  List<String> nameUser = [
    'Usman Ashraf',
    'Linda Atherton',
    'Rodney Austin',
    'Jane Barrett',
    'Gemma Best',
    'Lindsey Brooke',
    'John Cawthorn',
    'Peter Cheater',
    'Martin Collis',
    'Doris Cox',
    'Terence Dash',
    'Spencer Deane',
    'Trevor Dobbins',
    'Gillian Drysdale',
    'Clint Eastwood',
    'Janette Eaton',
    'Deborah Gandy',
    'Christopher Green',
    'Michael Grosvenor',
    'Lawrence Holland',
    'Duncan Kennedy',
    'Kashif Khan',
    'Margaret Kirk',
    'Susan Lowe',
    'Amir Mansouri',
    'Terence McDonagh',
    'Gary McGowan',
    'John Milton',
    'Douglas Norris',
    'Diana Pepper',
    'Colin Perry',
    'David Peterson',
    'Susan Pratt',
    'Ayesha Rafi',
    'Foyzur Rahman',
    'David Ronchetti',
    'Barry Ryder',
    'Christine Sanders',
    'Anita Simmonds',
    'Jane Simmons',
    'Andrew Smith',
    'Justin Smith',
    'Mark Spence',
    'Cynthia Taggart',
    'Billie Taylor',
    'Parminder Thiara',
    'Simon Thornton',
    'Mark Venn',
    'Mary Young',
    'Ismail Yusuf',
  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 110,
      width: 100,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: newStory ? Colors.pink : Colors.transparent,
          child: Container(
            decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.amber,
                Colors.blue,
                Colors.orange,
                Colors.yellow
              ],
            ),
          ),
            child: CircleAvatar(
              radius: 32,
              backgroundImage:
                  NetworkImage('https://i.pravatar.cc/150?img=${index + 10}'),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(nameUser[index])
      ]),
    );
  }
}