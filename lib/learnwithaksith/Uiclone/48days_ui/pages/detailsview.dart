import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Detailview extends StatelessWidget {
  const Detailview({super.key, required this.image, required this.tag});

  final String image;
  final String tag;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery
        .of(context)
        .size
        .height;
    double w = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
        body:
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: h / 2,
                width: w,
                child: Stack(
                  children: [
                    SizedBox(
                      height: h / 2.2,
                      width: w,
                      child: Hero(tag: tag,
                          child: Image.asset(image, fit: BoxFit.cover,)),),
                  Positioned(
                    right: 20,
                    bottom: 5,
                    child: Container(decoration:const BoxDecoration(
                      shape: BoxShape.circle
                    ),
                      child: const CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage("https://t3.ftcdn.net/jpg/06/78/09/78/240_F_678097876_9kJnFlRYGAeibsVxspqtCL9UR8giLAvF.jpg"),
                      ),),),
                  const Positioned(
                      right: 25,
                      top: 40,
                      child: Icon(Icons.favorite_border,color: Colors.white,)),
                 Positioned(
                        left: 20,
                        top: 40,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back,color: Colors.white,),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                        ))
                  ],
                ),
              ),
              const Text("  Madrid city tour",style: TextStyle(fontSize: 35),),
              const Text("  for designer",style: TextStyle(fontSize: 35),),
              const Text("    there are same thing new for you.",style: TextStyle(fontSize: 15,color: Colors.black45),),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 20,),
                    Text("30"),
                    SizedBox(width: 5),
                    Icon(Icons.favorite_border),
                    SizedBox(width: w/8,),
                    Text("334"),
                    SizedBox(width: 5),
                    Icon(Icons.share_outlined),
                    SizedBox(width: w/8,),
                    Text("82"),
                    SizedBox(width: 5),
                    Icon(Icons.message),
                    SizedBox(width: w/8,),
                    Text("295"),
                    SizedBox(width: 5),
                    Icon(Icons.emoji_emotions_rounded),
                    SizedBox(width: 20,)
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Divider(height: 3,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Text("In a professional context it often happens that private or corporate clients corder a publication to be made and presented with the actual content still not being ready. Think of a news blog that's filled with content hourly on the day of going live. However, reviewers tend to be distracted by comprehensible content, say, a random text copied from a newspaper or the internet. The are likely to focus on the text, disregarding the layout and its elements. Besides, random text risks to be unintendedly humorous or offensive, an unacceptable risk in corporate environments. Lorem ipsum and its many variants have been employed since the early 1960ies, and quite likely since the sixteenth century."),
              ),
          
            ],
          ),
        )
    );
  }
}
