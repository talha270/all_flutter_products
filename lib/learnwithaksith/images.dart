import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class Imageswidget extends StatelessWidget{
  const Imageswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Images"),
        elevation: 20,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 200,
          color: Colors.red,

          child:  CachedNetworkImage(imageUrl: "https://avatars.mds.yandex.net/i?id=80236700c7f29388186a51e176dbe9443122bfbd-8981167-images-thumbs&n=13",
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    blurRadius: 23,
                    // spreadRadius: 23,
                  ),
                ],
                image: DecorationImage(image: imageProvider,
                  fit: BoxFit.cover,
                  colorFilter: const ColorFilter.mode(Colors.red,BlendMode.colorBurn),
                ),
              ),
            ),
            placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error_outline),
          ),
          // decoration: BoxDecoration(
          //   boxShadow: [
          //     BoxShadow(
          //       blurRadius: 23,
          //       color: Colors.white,
          //       // spreadRadius: 40
          //     )
          //   ],
          // color: Colors.red,
          //   borderRadius: BorderRadius.circular(20),
          //   image: const DecorationImage(image: NetworkImage("https://avatars.mds.yandex.net/i?id=80236700c7f29388186a51e176dbe9443122bfbd-8981167-images-thumbs&n=13"),fit: BoxFit.cover)
          // ),


          // child:
          // Image.network(,            //this is not rounded corner if it gives the child as image
          // fit: BoxFit.fitHeight,
          //   fit: BoxFit.cover,
          //   fit: BoxFit.fill,
          //   fit: BoxFit.contain,
          // ),
        ),
      ),
    );
  }
}
