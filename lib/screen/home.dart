import 'package:flutter/material.dart';

import 'components/post.dart';
import 'components/story.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.add,
          color: Colors.black,
          size: 35,
        ),
        title: const Text(
          'Instagram',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'BeautyMountainsPersonal',
              fontSize: 30),
        ),
        actions: [
          Image.asset('assets/icons8-heart-30.png'),
          Image.asset(
            'assets/icons8-send-64.png',
            scale: 2,
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 110,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      const YourStory(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 90,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return AvatarStory(index:index , newStory: index % 2 == 0 ? true : false,);
                            }),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height - 190 - 60,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Posts(index : index);
                      }),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                const Icon(Icons.home,size: 30,),
                const Icon(Icons.search,size: 30,),
                Image.asset('assets/icons8-instagram-reels-50.png',scale: 1.5,),
                Image.asset('assets/icons8-instagram-shop-48.png',scale: 1.5,),
                Image.asset('assets/icons8-circled-user-64.png',scale: 1.9,),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
