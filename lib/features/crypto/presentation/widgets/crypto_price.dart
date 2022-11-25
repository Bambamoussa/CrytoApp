import 'package:flutter/material.dart';

class CryptoPrice extends StatelessWidget {
  const CryptoPrice({Key? key, required this.cryptoChange, required this.priceUp}) : super(key: key);
  final num cryptoChange;
  final bool priceUp;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: priceUp ? const Color.fromARGB(255, 73, 199, 79) : const Color.fromARGB(255, 255, 67, 34),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Flexible(
        child: Text(
          priceUp ? '+${cryptoChange.toStringAsFixed(1)}%' : '${cryptoChange.toStringAsFixed(1)}%',
          style: const TextStyle(fontWeight: FontWeight.w500),
          textAlign: TextAlign.end,
        ),
      ),
    );
  }
}
