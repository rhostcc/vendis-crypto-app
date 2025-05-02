import 'package:flutter/material.dart';
import '../components/transaction.dart';
import '../components/actionButton.dart';
import '../components/bottomBar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false, // 🚫 Bloquea el botón de retroceso
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
          automaticallyImplyLeading: false, // Oculta el ícono de retroceso
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 16),
              // Wallet Balance Box
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      "Saldo en la Billetera",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(255, 110, 5, 1),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "USDT ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(255, 110, 5, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "1234,1234",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.visibility, color: Colors.grey),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Botones de acción
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ActionButton(icon: Icons.qr_code_2, label: "Cobro"),
                  ActionButton(icon: Icons.qr_code_scanner, label: "Pago"),
                  ActionButton(icon: Icons.account_balance, label: "Retiro"),
                ],
              ),
              const SizedBox(height: 16),
              // Lista de movimientos
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListView(
                    children: [
                      const Text(
                        "Últimos movimientos",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      TransactionItem(
                        type: "Crédito",
                        amount: "USDT 12,35",
                        date: "29/04/2023 - 12:30 am",
                        isCredit: true,
                      ),
                      TransactionItem(
                        type: "Crédito",
                        amount: "USDT 12,35",
                        date: "29/04/2023 - 12:30 am",
                        isCredit: true,
                      ),
                      TransactionItem(
                        type: "Crédito",
                        amount: "USDT 12,35",
                        date: "29/04/2023 - 12:30 am",
                        isCredit: true,
                      ),
                      TransactionItem(
                        type: "Débito",
                        amount: "USDT 12,35",
                        date: "29/04/2023 - 12:30 am",
                        isCredit: false,
                      ),
                      TransactionItem(
                        type: "Débito",
                        amount: "USDT 12,35",
                        date: "29/04/2023 - 12:30 am",
                        isCredit: false,
                      ),
                      TransactionItem(
                        type: "Crédito",
                        amount: "USDT 12,35",
                        date: "29/04/2023 - 12:30 am",
                        isCredit: true,
                      ),
                    ],
                  ),
                ),
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
import '../components/transaction.dart';
import '../components/actionButton.dart';
import '../components/bottomBar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: const Text("Vendis QR"),
        //title: Image.asset('assets/vendis-logo.png', width: 50),
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
      backgroundColor: Colors.white, // Naranja de fondo
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            // Wallet Balance Box
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    "Saldo en la Billetera",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(255, 110, 5, 1),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "USDT ",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(255, 110, 5, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "1234,1234",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.visibility, color: Colors.grey),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Botones de acción
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ActionButton(icon: Icons.qr_code_2, label: "Cobro"),
                ActionButton(icon: Icons.qr_code_scanner, label: "Pago"),
                ActionButton(icon: Icons.account_balance, label: "Retiro"),
              ],
            ),
            const SizedBox(height: 16),
            // Lista de movimientos
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView(
                  children: [
                    const Text(
                      "Últimos movimientos",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    TransactionItem(
                      type: "Crédito",
                      amount: "USDT 12,35",
                      date: "29/04/2023 - 12:30 am",
                      isCredit: true,
                    ),
                    TransactionItem(
                      type: "Crédito",
                      amount: "USDT 12,35",
                      date: "29/04/2023 - 12:30 am",
                      isCredit: true,
                    ),
                    TransactionItem(
                      type: "Crédito",
                      amount: "USDT 12,35",
                      date: "29/04/2023 - 12:30 am",
                      isCredit: true,
                    ),
                    TransactionItem(
                      type: "Débito",
                      amount: "USDT 12,35",
                      date: "29/04/2023 - 12:30 am",
                      isCredit: false,
                    ),
                    TransactionItem(
                      type: "Débito",
                      amount: "USDT 12,35",
                      date: "29/04/2023 - 12:30 am",
                      isCredit: false,
                    ),
                    TransactionItem(
                      type: "Crédito",
                      amount: "USDT 12,35",
                      date: "29/04/2023 - 12:30 am",
                      isCredit: true,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
 */
