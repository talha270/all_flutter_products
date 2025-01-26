import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Detailview extends StatelessWidget {
 final List icecream;
 final int index;
  const Detailview({super.key,required this.icecream, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(icecream[index]["flavour"],style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
      body: Column(
        children: [
        Hero(tag: "${index}background",
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(13),
              child: CachedNetworkImage(
                imageUrl:icecream[index]["image"],fit: BoxFit.fill,width: MediaQuery.sizeOf(context).width,height: MediaQuery.sizeOf(context).height/1.5,)
          ),
        ),
        ),
        Text(icecream[index]["flavour"]),
        Text("\$${icecream[index]["price"]}"),
        SizedBox(
          height: 60,
          width: MediaQuery.sizeOf(context).width,
          child: ListView.builder(itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Chip(label: Text(icecream[this.index]["toppings"][index])),
          );
          },
            scrollDirection: Axis.horizontal,
            itemCount: 3,
          ),
        )
        ],
      ),
    );
  }

}
