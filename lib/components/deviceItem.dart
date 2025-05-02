import 'package:flutter/material.dart';

class DeviceItem extends StatelessWidget {
  final String name;
  final String serial;
  final bool isAndroid;
  final bool isActive;

  const DeviceItem({
    super.key,
    required this.name,
    required this.serial,
    required this.isAndroid,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            isAndroid ? 'assets/android.png' : 'assets/apple.png',
            height: 24,
            width: 24,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "S/N: $serial",
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          if (isActive)
            const Icon(Icons.check_circle, color: Colors.green, size: 20),
        ],
      ),
    );
  }
}
