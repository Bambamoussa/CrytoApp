import 'package:cryptomonnaie/core/constants/app_constant.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/crypto_entity.dart';
import 'package:cryptomonnaie/features/crypto/presentation/pages/details_page.dart';
import 'package:cryptomonnaie/features/crypto/presentation/widgets/crypto_price.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numeral/numeral.dart';

class CryptoItemWidget extends StatelessWidget {
  const CryptoItemWidget({
    Key? key,
    required this.cryptoEntity,
  }) : super(key: key);
  final CryptoEntity cryptoEntity;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: InkWell(
         onTap: () => showDetails(context, cryptoEntity),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15, bottom: 5),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 0.5,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
            ),
            ListTile(
              textColor: Colors.white,
              leading: Image.network(
                cryptoEntity.image,
                height: 40,
              ),
              title: Row(
                children: [
                  Text(
                    cryptoEntity.symbol.toUpperCase(),
                    style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                   AppConstants.usd ,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              subtitle: Text(
                cryptoEntity.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    Numeral(cryptoEntity.currentPrice).toString(),
                    style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                  ),
                  const SizedBox(height: 2),
                  cryptoEntity.priceChange24 > 0
                      ? CryptoPrice(
                          cryptoChange: cryptoEntity.priceChange24,
                          priceUp: true,
                        )
                      : CryptoPrice(cryptoChange: cryptoEntity.priceChange24, priceUp: false)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  showDetails(BuildContext context, CryptoEntity cryptoEntity) => showCupertinoModalPopup(
      context: context,
      builder: (context) => DetailPage(
          cryptoID: cryptoEntity.id,
          cryptoSymbol: cryptoEntity.symbol,
          cryptoName: cryptoEntity.name,
          cryptoImage: cryptoEntity.image,
          cryptoPrice: cryptoEntity.currentPrice,
          cryptoChange: cryptoEntity.priceChange24));
}
