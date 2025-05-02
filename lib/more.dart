import 'package:flutter/material.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("More"),
        backgroundColor: const Color.fromRGBO(255, 110, 5, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Bienvenido a Vendis Crypto App"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/dashboard");
              },
              child: const Text("Ir a Dispositivos"),
            ),
          ],
        ),
      ),
    );
  }
}
