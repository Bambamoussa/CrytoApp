// lib/notification/view/notification_page.dart
import 'package:cryptomonnaie/features/crypto/presentation/controller/notification_cubit.dart';
import 'package:cryptomonnaie/features/crypto/presentation/widgets/notification_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPopupSurface(
      child: Material(
        child: Container(
          color: const Color.fromARGB(255, 31, 31, 31),
          padding: const EdgeInsetsDirectional.all(10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).copyWith().size.height * 0.95,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 5,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.grey.shade700,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              ListTile(
                title: const Text(
                  'Notifications',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 29,
                  ),
                ),
                trailing: Container(
                  padding: const EdgeInsets.all(0),
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    padding: const EdgeInsets.all(0),
                    icon: Icon(
                      Icons.close_rounded,
                      size: 23,
                      color: Colors.grey.shade400,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ),
              Divider(color: Colors.grey.shade600),
              BlocProvider(
                create: (context) => NotificationCubit(),
                child: const NotificationWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}