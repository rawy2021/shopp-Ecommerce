import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shoping/features/splash/presntion/Auth/presentation/pages/widgets/complete_infromation/dimain/respotries/auth-repo.dart';

class AoutRepoImpl extends AuthRepo{
  @override
  Future completeInfromation({required String name, required String phoneNumber, required String address}) {
    throw UnimplementedError();
  }

  @override
  Future loginWithFacebook() async{
    final LoginResult loginResult = await FacebookAuth.instance.login();

    var FacebookAuthProvider;
    final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

    var FirebaseAuth;
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

  @override
  Future loginWithGoogle() async{
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    var GoogleAuthProvider;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    var FirebaseAuth;
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

}

class OAuthCredential {
}