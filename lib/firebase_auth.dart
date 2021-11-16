import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class AuthBase {
  User get currentUser;
  Stream<User> authStateChanges();
  Future<User> signInWithGoogle();
  Future<void> signOut();
}

class Auth implements AuthBase {
  final _firebaseAuth = FirebaseAuth.instance;
  @override
  Stream<User> authStateChanges() {
    return _firebaseAuth.authStateChanges();
  }

  @override
  // TODO: implement currentUser
  User get currentUser => _firebaseAuth.currentUser;

  @override
  Future<User> signInWithGoogle() async {
    // TODO: implement signInWithGoogle
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    // Once signed in, return the UserCredential
    var userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    return userCredential.user;
  }

  @override
  Future<void> signOut() async {
    // TODO: implement signOut
    await _firebaseAuth.signOut();
  }
}
