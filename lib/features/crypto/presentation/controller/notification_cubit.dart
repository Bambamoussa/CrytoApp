// lib/notification/cubit/notification_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:cryptomonnaie/features/crypto/data/models/cryptonotification_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
 

FirebaseMessaging messaging = FirebaseMessaging.instance;

class NotificationCubit extends Cubit<List> {
  NotificationCubit() : super(cryptosNotification);

  late SharedPreferences prefs;
  static late List _preference = [];

  getPreferences() async {
    _preference = [];
    prefs = await SharedPreferences.getInstance();
    for (var crypto in cryptosNotification) {
      var local = prefs.getBool(crypto['id']) ?? false;
      _preference.add({
        "index": crypto['index'],
        "id": crypto['id'],
        "symbol": crypto['symbol'],
        "name": crypto['name'],
        "image": crypto['image'],
        "save": local,
      });
    }
    emit(_preference);
  }

  changePreference(bool value, int index) async {
    _preference[index]['save'] = value;
    prefs.setBool(_preference[index]['id'], value);
    if (value) {
      await messaging.subscribeToTopic(_preference[index]['id']);
    } else {
      await messaging.unsubscribeFromTopic(_preference[index]['id']);
    }
    getPreferences();
  }
}