import 'package:firebase_auth/firebase_auth.dart';
import 'package:health_app/models/user.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  //create user obj based on firebase
  User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(uid: user.uid): null;
  }

  // auth change using streams
  Stream<User> get user {
    return _auth.onAuthStateChanged
        .map(_userFromFirebaseUser);
  }
  //signin ano

  Future signIn() async{

    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user  = result.user;
      return _userFromFirebaseUser(user);
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }

// login with email and phone
  Future registerWithEmailandPassword(String email, String password) async{

    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user  = result.user;
      return _userFromFirebaseUser(user);
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }


// register with phone






}