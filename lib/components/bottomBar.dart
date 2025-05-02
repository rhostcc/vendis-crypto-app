import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/dashboard');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/devices');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/more');
        break;
    }
  }

  @override
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
  }
}


/* import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      backgroundColor: const Color.fromRGBO(255, 110, 5, 1),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
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
  }
}
 */