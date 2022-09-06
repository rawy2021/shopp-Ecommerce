abstract class AuthRepo{
  Future loginWithGoogle();
  Future loginWithFacebook();
  Future completeInfromation({required String name,required String phoneNumber ,required String address});
}