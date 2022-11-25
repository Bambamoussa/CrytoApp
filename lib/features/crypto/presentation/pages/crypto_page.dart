import 'package:cryptomonnaie/core/constants/app_constant.dart';
import 'package:cryptomonnaie/features/crypto/presentation/widgets/crypto_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CryptoPage extends StatefulWidget {
  const CryptoPage({Key? key}) : super(key: key);

  @override
  State<CryptoPage> createState() => _CryptoPageState();
}

class _CryptoPageState extends State<CryptoPage> {
  late String currentDate = '';

  getCurrentDate() {
    var now = DateTime.now();
    var formatter = DateFormat('dd MMMM');
    setState(() {
      currentDate = formatter.format(now);
    });
  }

  @override
  void initState() {
    super.initState();
    getCurrentDate();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.black,
        leading: const Text(
          AppConstants.crypto,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
        ),
        middle: Text(
          currentDate,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Colors.grey,
          ),
        ),
      ),
      child: const CryptoWidget(),
    );
  }
}
