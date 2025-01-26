import 'package:flutter/material.dart';
class Detail extends StatelessWidget{
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("details"),
      ),
      body: Container(
        color: Colors.red.shade200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Hero(
                tag: "background",
                child: Image.asset("assets/images/hack.jpg"),

              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5,left: 5),
              child: Text("SPIDER MAN",style:TextStyle(fontSize: 23,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
            ),
            const Text("Spider-Man, my favorite superhero, has woven a web of inspiration and excitement into my life. With his remarkable abilities, relatable personality, and undying determination, Spider-Man has captured the hearts of fans around the globe."
                " What sets Spider-Man apart from other superheroes is his relatability. Unlike gods or billionaires, Peter Parker is an ordinary individual who faces the challenges of everyday life."
                "As a high school student, he grapples with academic pressures, personal relationships, and the pursuit of his dreams. Through Peter's struggles, we see a reflection of our own lives, allowing us to connect with him on a deeper level."
                "Spider-Man's superhuman abilities, including his wall-crawling, agility, and web-slinging skills, make him a force to be reckoned with. "
                "Watching him swing through the cityscape, effortlessly thwarting villains and saving innocent lives, fills me with awe and exhilaration. His powers represent the idea that even the most unlikely heroes can rise to greatness and make a difference in the world."),
          ],
        ),
      ),
    );
  }
}