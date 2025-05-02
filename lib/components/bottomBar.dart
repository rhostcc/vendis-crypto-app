import 'package:flutter/material.dart';
//import 'package:vendis_crypto_app/devices.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/dashboard');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/devices');
        /* Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder:
                (context, animation, secondaryAnimation) => const Devices(),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              const begin = Offset(1.0, 0.0); // de derecha a izquierda
              const end = Offset.zero;
              const curve = Curves.ease;

              final tween = Tween(
                begin: begin,
                end: end,
              ).chain(CurveTween(curve: curve));
              final offsetAnimation = animation.drive(tween);

              return SlideTransition(position: offsetAnimation, child: child);
            },
          ),
        ); */
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/movements');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/more');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // 👈 ¡Clave para más de 3!
      backgroundColor: const Color.fromRGBO(255, 110, 5, 1),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      onTap: (index) => _onItemTapped(context, index),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet, size: 40),
          label: "Billetera",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.devices, size: 40),
          label: "Dispositivos",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_long, size: 40),
          label: "Movimientos",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.apps, size: 40), label: "Más"),
      ],
    );
  }

  /* @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color.fromRGBO(255, 110, 5, 1),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      onTap: (index) => _onItemTapped(context, index),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet, size: 40),
          label: "Billetera",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.devices, size: 40),
          label: "Dispositivos",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.apps, size: 40), label: "Más"),
      ],
    );
  } */
}
