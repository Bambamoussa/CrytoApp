import 'package:cryptomonnaie/features/crypto/presentation/pages/crypto_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'di/injection_container.dart' as di;

void main() {
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
        title: 'CryptoApp',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const CryptoPage(),
      ),
    );
  }
}
