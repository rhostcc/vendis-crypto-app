import 'package:flutter/material.dart';
import 'package:vendis_crypto_app/devices.dart';
import 'package:vendis_crypto_app/login.dart';
import 'package:vendis_crypto_app/dashboard.dart';
import 'package:vendis_crypto_app/more.dart';

void main() {
  runApp(const VendisApp());
}

class VendisApp extends StatelessWidget {
  const VendisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cobros QR Vendis',
      theme: ThemeData(fontFamily: "Montserrat"),
      debugShowCheckedModeBanner: true,
      initialRoute: "/",
      routes: {
        "/": (context) => const Login(),
        "/dashboard": (context) => const Dashboard(),
        "/devices": (context) => const Devices(),
        "/more": (context) => const More(),
      },
    );
  }
}
