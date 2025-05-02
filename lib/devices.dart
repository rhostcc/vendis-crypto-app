import 'package:flutter/material.dart';
import 'components/deviceItem.dart';
import 'components/bottomBar.dart';

class Devices extends StatelessWidget {
  const Devices({super.key});

  @override
  Widget build(BuildContext context) {
    final devices = [
      {
        "name": "Android 10",
        "serial": "e1bdb6c9-43a4-4928-87a9-0c5df8bd6cc7",
        "android": true,
        "active": true,
      },
      {
        "name": "PRO 870",
        "serial": "6be4f8cb-2c94-4e36-b18b-cd1a1df2ea45",
        "android": true,
        "active": false,
      },
      {
        "name": "Denis Samsung",
        "serial": "29a7f14f-5e75-4f6b-97b4-07e4e2079277",
        "android": true,
        "active": false,
      },
      {
        "name": "Vendis QR - Old",
        "serial": "1800c0f2-bc5d-497e-a070-b4dc8c583bac",
        "android": false,
        "active": false,
      },
      {
        "name": "Vendis QR IOS",
        "serial": "1800c0f2-bc5d-497e-a070-b4dc8c583bac",
        "android": false,
        "active": false,
      },
      {
        "name": "Denis Samsung",
        "serial": "29a7f14f-5e75-4f6b-97b4-07e4e2079277",
        "android": true,
        "active": false,
      },
      {
        "name": "Vendis QR - Old",
        "serial": "1800c0f2-bc5d-497e-a070-b4dc8c583bac",
        "android": true,
        "active": false,
      },
      {
        "name": "Vendis QR IOS",
        "serial": "1800c0f2-bc5d-497e-a070-b4dc8c583bac",
        "android": false,
        "active": false,
      },
    ];

    return WillPopScope(
      onWillPop: () async => false, // 🔒 Bloquea el botón físico "atrás"
      child: Scaffold(
        appBar: AppBar(
          title: SizedBox(
            height: 40,
            child: Align(
              alignment: Alignment.center,
              child: Image.asset('assets/vendis-logo-white.png', height: 40),
            ),
          ),
          backgroundColor: const Color.fromRGBO(255, 110, 5, 1),
          automaticallyImplyLeading: false, // 🚫 Oculta la flecha de retroceso
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: devices.length,
            itemBuilder: (context, index) {
              final d = devices[index];
              return DeviceItem(
                name: d['name'] as String,
                serial: d['serial'] as String,
                isAndroid: d['android'] as bool,
                isActive: d['active'] as bool,
              );
            },
          ),
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
