import 'package:all_flutter_tutorial/learnwithaksith/Uiclone/48days_ui/pages/detailsview.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget{
  const Firstpage({super.key});

  @override
  State<Firstpage> createState()=> Firstpagestate();
}
class Firstpagestate extends State<Firstpage>{
  var imageslist=[
    "assets/images/ui_images/1.jpg",
    "assets/images/ui_images/2.jpg",
    "assets/images/ui_images/3.jpeg",
    "assets/images/ui_images/4.jpeg",
    "assets/images/ui_images/5.jpg",
    "assets/images/ui_images/6.jpg",
    "assets/images/ui_images/7.jpg",
    "assets/images/ui_images/8.webp",
    "assets/images/ui_images/9.jpg",
    "assets/images/ui_images/10.jpg",
    "assets/images/ui_images/11.jpg",
    "assets/images/ui_images/12.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        leading: const Icon(Icons.arrow_back),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              SizedBox(
                width: w/4,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: w/8,
                      // backgroundImage: const NetworkImage("https://t3.ftcdn.net/jpg/06/78/09/78/240_F_678097876_9kJnFlRYGAeibsVxspqtCL9UR8giLAvF.jpg"),
                      backgroundImage: AssetImage("assets/images/ui_images/person.jpg"),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child:   Container(
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green
                      ),
                    ),),
                  ],
                ),
              ),
              const Text("Muhammad talha",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              const Text("CEO & founder",style: TextStyle(fontSize: 12,color: Colors.black45,fontWeight: FontWeight.bold),),
              const SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text("20",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),),
                      Text("Created",style: TextStyle(fontSize: 16,color: Colors.black),),
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Text("398",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),),
                      Text("attended",style: TextStyle(fontSize: 16,color: Colors.black),),
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Text("936",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),),
                      Text("Followers",style: TextStyle(fontSize: 16,color: Colors.black),),
                    ],
                  ),
                ],
              ),
            const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                  onPressed: (){},
                    icon: const Icon(Icons.camera_outlined,size: 30,),
                  ),
                    // ),
                  const SizedBox(width: 100,),
                  IconButton(
                      onPressed: (){},
                      icon:const Icon(Icons.menu,size: 30,color: Colors.black26,)),
                ],
              ),
              const SizedBox(height: 30,),
              SingleChildScrollView(
                child: SizedBox(
                  height: h*0.42,
                  width: w-70,
                  child:
                GridView.builder(
                  itemBuilder:(context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => Detailview(image: imageslist[index].toString(),tag: index.toString(),),));
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Hero(tag: index.toString(), child: Image.asset(imageslist[index],fit:BoxFit.cover)),
                      ),
                    );
                  },
                  itemCount: imageslist.length,
                  // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 3,
                  //     crossAxisSpacing: 2,
                  //   mainAxisExtent: 120,
                  //   mainAxisSpacing: 2,
                  // ),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 120,
                    mainAxisSpacing: 10,
                  ),
                ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


