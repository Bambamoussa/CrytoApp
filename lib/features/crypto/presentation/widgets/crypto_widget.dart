import 'package:cryptomonnaie/features/crypto/domain/entities/crypto_entity.dart';
import 'package:cryptomonnaie/features/crypto/presentation/controller/providers.dart';
import 'package:cryptomonnaie/features/crypto/presentation/widgets/crypto_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CryptoWidget extends StatelessWidget {
  const CryptoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final cryptoList = ref.watch(cryptoListcontrollerProvider);
        return cryptoList.when(
            data: (cryptos) => ListView.builder(
                  itemCount: cryptos.length,
                  itemBuilder: (context, index) => CryptoItemWidget(
                    cryptoEntity: CryptoEntity(
                        id: cryptos[index].id,
                        symbol: cryptos[index].symbol,
                        name: cryptos[index].name,
                        image: cryptos[index].image,
                        currentPrice: cryptos[index].currentPrice,
                        priceChange24: cryptos[index].priceChange24),
                  ),
                ),
            error: ((error, stackTrace) => Text(AppLocalizations.of(context).noLunch)),
            loading: () => const CircularProgressIndicator());
      },
    );
  }
}
