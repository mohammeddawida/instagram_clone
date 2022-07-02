import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final int index;
  Posts({Key? key , required this.index}) : super(key: key);
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
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
                "https://picsum.photos/${MediaQuery.of(context).size.width.toStringAsFixed(0)}/${MediaQuery.of(context).size.width.toStringAsFixed(0)}?random=$index")),
        Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset('assets/icons8-heart-30.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/icons8-chat-32.png',
                    scale: 1.2,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/icons8-send-64.png',
                    scale: 2,
                  ),
                ],
              ),
              Container(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset(
                    'assets/icons8-send-64.png',
                    scale: 2,
                  )),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              const Text(
                'Liked by ',
              ),
              Text(
                nameUser[index],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(' and '),
              const Text(
                'others',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 10),
          child: Row(
            children: const [
              Text(
                'SEPT 8',
                style: TextStyle(color: Colors.black26),
              ),
            ],
          ),
        )
      ],
    );
  }
}
