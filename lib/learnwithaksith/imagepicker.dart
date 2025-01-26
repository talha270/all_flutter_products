import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class Imagepickerpackage extends StatefulWidget{
  const Imagepickerpackage({super.key});

  @override
  State<Imagepickerpackage> createState()=>Imagepickerpackagestate();
}

class Imagepickerpackagestate extends State<Imagepickerpackage>{
  ImagePicker picker=ImagePicker();
  XFile? file;
  List<XFile>? files;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image picker"),
        elevation: 30,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            file!=null? CircleAvatar(
              radius: 60,
              backgroundImage: FileImage(File(file!.path)),
            ):const CircleAvatar(
                radius: 60,
                child: Icon(Icons.person,size: 60,)
            ),
            ElevatedButton(onPressed: ()async{
               showAlertBox(context);
            }, child: const Text("Add")),
            ElevatedButton(onPressed: ()async{
             final photos=await picker.pickMultiImage();
             setState(() {
               files=photos;
             });
             for(int i=0;i<photos!.length;i++){
               print(photos[i].path);
             }
            }, child: const Text("Add")),
          ],
        ),
      ),
    );
  }
  void showAlertBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Choice"),
        scrollable: true,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                pickimage(ImageSource.gallery);
                Navigator.of(context).pop();
              },
              child: const Row(
                children: [
                  Icon(Icons.image),
                  SizedBox(width: 10),
                  Text("Gallery"),
                ],
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                pickimage(ImageSource.camera);
                Navigator.of(context).pop();
              },
              child: const Row(
                children: [
                  Icon(Icons.camera),
                  SizedBox(width: 10),
                  Text("Camera"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  pickimage(ImageSource source)async{
    final XFile? photo=await picker.pickImage(source: source!);
    setState(() {
      if(photo!=null){file=photo;}
    });
  }
}