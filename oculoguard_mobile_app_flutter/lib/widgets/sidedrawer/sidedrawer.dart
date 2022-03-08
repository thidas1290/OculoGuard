import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:oculoguard_mobile_app_flutter/constants.dart';

class SideDrawer extends StatelessWidget {
  SideDrawer({Key? key}) : super(key: key);

  User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kBackgroundColor,
      child: Builder(builder: (context) {
        Size size = MediaQuery.of(context).size;
        return ListView(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                user!.photoURL!,
                scale: 0.1,
              ),
              radius: size.width / 4,
            ),
            ListTile(
              title: Text(user!.displayName!),
            )
          ],
        );
      }),
    );
  }
}
