import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:shared_preferences/shared_preferences.dart';
FirebaseMessaging messaging = FirebaseMessaging.instance;
class MessagingService{
  
  static  getToken(){
  messaging.getToken().then((token){
    print('token'+ token!);
  }); 
}
 static getCurrentTopic() async{
  SharedPreferences prefs  = await SharedPreferences.getInstance();
  final _flutter = prefs.getBool('flutter')?? false;
  final _firebase = prefs.getBool('firebase')?? false;
  print('Abonnement flutter ${_flutter.toString()}');
  print('Abonnement firebase ${_firebase.toString()}');
  if(_flutter){
    await messaging.subscribeToTopic('flutter');
  }
  if(_firebase){
    await messaging.subscribeToTopic('firebase');
  }
 }

}
