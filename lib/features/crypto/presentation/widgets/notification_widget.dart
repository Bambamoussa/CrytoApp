 // lib/notification/view/notification_view.dart
import 'package:cryptomonnaie/features/crypto/presentation/controller/notification_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({Key? key}) : super(key: key);
  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  @override
  void initState() {
    super.initState();
    context.read<NotificationCubit>().getPreferences();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationCubit, List>(
      builder: (context, cryptos) {
        return Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: cryptos.map((crypto) {
                return SwitchListTile(
                  value: crypto['save'] ?? false,
                  onChanged: (bool value) {
                    context
                        .read<NotificationCubit>()
                        .changePreference(value, crypto["index"]);
                  },
                  secondary: Image.network(
                    crypto['image'],
                    height: 40,
                  ),
                  title: Text(
                    crypto['symbol'].toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    crypto['name'],
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}