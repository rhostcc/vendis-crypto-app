import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final String type;
  final String date;
  final String amount;
  final bool isCredit;

  const TransactionItem({
    required this.type,
    required this.date,
    required this.amount,
    required this.isCredit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border:
            isCredit ? null : Border.all(color: Colors.purpleAccent, width: 2),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: isCredit ? Colors.green : Colors.red,
            child: Icon(
              isCredit ? Icons.add : Icons.remove,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: TextStyle(
                    color: isCredit ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  date,
                  style: const TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ],
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              color: isCredit ? Colors.green : Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
