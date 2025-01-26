import 'package:flutter/material.dart';

class OverlappingCircleAvator extends StatelessWidget {
  OverlappingCircleAvator({super.key});

  List RandomImages = [
    'https://pbs.twimg.com/media/D8dDZukXUAAXLdY.jpg',
    'https://pbs.twimg.com/profile_images/1249432648684109824/J0k1DN1T_400x400.jpg',
    'https://i0.wp.com/thatrandomagency.com/wp-content/uploads/2021/06/headshot.png?resize=618%2C617&ssl=1',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaOjCZSoaBhZyODYeQMDCOTICHfz_tia5ay8I_k3k&s'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < RandomImages.length; i++)
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 0),
                      child: Align(
                          widthFactor: 0.3,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                RandomImages[i],
                              ),
                            ),
                          )),
                    )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              CircleAvatar(

                backgroundColor: Colors.grey.shade200,
                radius: 40,
                child: Center(child: Icon(Icons.add)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}