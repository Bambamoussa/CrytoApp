import 'package:cryptomonnaie/core/constants/app_constant.dart';
import 'package:cryptomonnaie/features/crypto/presentation/pages/crypto_page.dart';
import 'package:cryptomonnaie/service/messaging_services.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';

import 'di/injection_container.dart' as di;




void main()async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
   MessagingService.getToken();
   MessagingService.getCurrentTopic();
  di.init();
  runApp(const CryptoApp());
}

class CryptoApp extends StatelessWidget {
  const CryptoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: AppConstants.cryptoApp ,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const CryptoPage(),
      ),
    );
  }
}
