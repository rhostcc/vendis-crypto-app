import 'package:flutter/material.dart';
import 'components/bottomBar.dart';

class Devices extends StatelessWidget {
  const Devices({super.key});

  @override
  Widget build(BuildContext context) {
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Bienvenido a Vendis Crypto App"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/devices");
                },
                child: const Text("Ir a Dispositivos"),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}


/* import 'package:flutter/material.dart';

class Devices extends StatelessWidget {
  const Devices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Devices"),
        backgroundColor: const Color.fromRGBO(255, 110, 5, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Bienvenido a Vendis Crypto App"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/devices");
              },
              child: const Text("Ir a Dispositivos"),
            ),
          ],
        ),
      ),
    );
  }
}
 */