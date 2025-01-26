import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'detailviewpage.dart';

class Icecream extends StatefulWidget {
  const Icecream({super.key});

  @override
  State<Icecream> createState() => _IcecreamState();
}

class _IcecreamState extends State<Icecream> {
  final icecream=[
    {
      "flavour":"Chocolate",
      "price":"490",
      "description":"This is a list of notable ice cream flavors. Ice cream is a frozen dessert usually made from dairy products, such as milk and cream",
      "toppings":["salted caramel","caramel popcorn","sea salt"],
      "image":"https://images.unsplash.com/photo-1599999182263-ce6c07e98764?q=80&w=1365&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "ingredients":[
        {"name":"caramel sauce","quantity":"1/2 cups"},
        {"name":"caramel candy","quantity":"1/4 cups"},
        {"name":"heavy cream","quantity":"1/4 cups"}
      ]
    },
    {
      "flavour":"Chocolate",
      "price":"490",
      "description":"This is a list of notable ice cream flavors. Ice cream is a frozen dessert usually made from dairy products, such as milk and cream",
      "toppings":["salted caramel","caramel popcorn","sea salt"],
      "image":"https://images.unsplash.com/photo-1599999182263-ce6c07e98764?q=80&w=1365&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "ingredients":[
        {"name":"caramel sauce","quantity":"1/2 cups"},
        {"name":"caramel candy","quantity":"1/4 cups"},
        {"name":"heavy cream","quantity":"1/4 cups"}
      ]
    },
    {
      "flavour":"Vanilla",
      "price":"599",
      "description":"This is a list of notable ice cream flavors. Ice cream is a frozen dessert usually made from dairy products, such as milk and cream",
      "toppings":["salted caramel","caramel popcorn","sea salt"],
      "image":"https://images.unsplash.com/photo-1560008581-09826d1de69e?q=80&w=1344&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "ingredients":[
        {"name":"caramel sauce","quantity":"1/2 cups"},
        {"name":"caramel candy","quantity":"1/4 cups"},
        {"name":"heavy cream","quantity":"1/4 cups"}
      ]
    },
    {
      "flavour":"Strawberry",
      "price":"690",
      "description":"This is a list of notable ice cream flavors. Ice cream is a frozen dessert usually made from dairy products, such as milk and cream",
      "toppings":["salted caramel","caramel popcorn","sea salt"],
      "image":"https://images.unsplash.com/photo-1534173751091-95c4b3108237?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "ingredients":[
        {"name":"caramel sauce","quantity":"1/2 cups"},
        {"name":"caramel candy","quantity":"1/4 cups"},
        {"name":"heavy cream","quantity":"1/4 cups"}
      ]
    },
  ];
   late Map selectedicecream=icecream[0];
   late List lista=selectedicecream["toppings"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20,left: 20),
                child: Text("Icecream",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("we have something new for you!",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black45),),
              ),
              const SizedBox(
                height: 40,
              ),
              lister(),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Topping for you!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(selectedicecream["image"].toString()),
                ),
                  title: Text(lista[index],style: const TextStyle(fontWeight: FontWeight.bold),),

                );
              },
              itemCount: lista.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
              ),
            ],
          ),
        ),
    );
  }
  lister() {
    return SizedBox(
      height: MediaQuery
          .sizeOf(context)
          .height / 2,
      width: MediaQuery
          .sizeOf(context)
          .width,
      child: ListView.builder(itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>
                Detailview(
                  icecream: icecream, index: index),));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 250,
              child: Card(
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23),
                  ),
                  elevation: 5,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Hero(tag: "${index}background",
                          child: CachedNetworkImage(
                            imageUrl: icecream[index]["image"].toString(),
                            fit: BoxFit.cover,
                            color: Colors.black45.withOpacity(0.3),
                            colorBlendMode: BlendMode.color,)),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10,),
                                child: Text(
                                  icecream[index]["flavour"].toString(),
                                  style: const TextStyle(fontSize: 15,
                                      fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, bottom: 10),
                                child: Text(
                                  "\$${icecream[index]["price"].toString()}",
                                  style: const TextStyle(fontSize: 15,
                                      fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),
        );
      },
        scrollDirection: Axis.horizontal,
        itemCount: icecream.length,
      ),
    );
  }
}
