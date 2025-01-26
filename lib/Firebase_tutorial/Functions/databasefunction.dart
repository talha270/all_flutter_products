import'package:cloud_firestore/cloud_firestore.dart';
create({required String colname,required String docname,required String name,required String animal,required int age})async{
  await FirebaseFirestore.instance.collection(colname).doc(docname).set({
    "name":name,
    "animal":animal,
    "age":age
  });
  print("database created");
}

update({required String colname,required String docname,required var field,required var newvalue})async{
  await FirebaseFirestore.instance.collection(colname).doc(docname).update({
    field:newvalue
  });
}


delete({required String colname,required String docname})async{
  await FirebaseFirestore.instance.collection(colname).doc(docname).delete();
}