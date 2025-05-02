import 'package:flutter/material.dart';
import 'components/bottomBar.dart';

class More extends StatelessWidget {
  const More({super.key});

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
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/");
                },
                child: const Text("Cerrar sesión"),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
