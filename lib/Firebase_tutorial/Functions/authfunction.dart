import 'package:firebase_auth/firebase_auth.dart';

signup({required String email,required String password})async{
  try{
    UserCredential userCredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    print("////////////////sucess///////////");
  }on FirebaseAuthException catch(e){
  if(e.code=="weak-password"){
    print(e);
  }
  if(e.code=="email-already-in-use"){
    print("error");
  }
  }
  catch (e){
    print(e);
  }

}

login({required String email,required String password})async{
  try {
    UserCredential userCredential=await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    print("////////sucess///////////");
  }catch(e){
    print(e);
  }
}