import 'package:flutter/material.dart';
import 'components/bottomBar.dart';
import 'components/transaction.dart';

class Movements extends StatefulWidget {
  const Movements({super.key});

  @override
  State<Movements> createState() => _MovementsState();
}

class _MovementsState extends State<Movements> {
  final ScrollController _scrollController = ScrollController();
  final List<Map<String, dynamic>> _transactions = [];
  bool _isLoading = false;
  int _loadedCount = 0;
  final int _loadBatch = 10;
  final int _totalTransactions = 1000;

  @override
  void initState() {
    super.initState();
    _loadMoreTransactions();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent - 100 &&
          !_isLoading &&
          _loadedCount < _totalTransactions) {
        _loadMoreTransactions();
      }
    });
  }

  void _loadMoreTransactions() {
    setState(() => _isLoading = true);

    Future.delayed(const Duration(seconds: 1), () {
      final List<Map<String, dynamic>> newTransactions = List.generate(
        _loadBatch,
        (index) {
          final isCredit = (_loadedCount + index) % 2 == 0;
          return {
            "type": isCredit ? "Crédito" : "Débito",
            "amount": "USDT ${(10 + index + _loadedCount).toStringAsFixed(2)}",
            "date": "01/05/2025 - 12:${(10 + index) % 60} am",
            "isCredit": isCredit,
          };
        },
      );

      setState(() {
        _transactions.addAll(newTransactions);
        _loadedCount += _loadBatch;
        _isLoading = false;
      });
    });
  }

  Future<bool> _onWillPop() async {
    return await showDialog(
          context: context,
          builder:
              (context) => AlertDialog(
                title: const Text("¿Deseas salir?"),
                content: const Text(
                  "¿Estás seguro de que quieres salir de esta pantalla?",
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: const Text("Cancelar"),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: const Text("Salir"),
                  ),
                ],
              ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
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
          automaticallyImplyLeading: false,
        ),
        body: Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Listado de todos los movimientos",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: _transactions.length + (_isLoading ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index >= _transactions.length) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: CircularProgressIndicator(
                            color: Color.fromRGBO(255, 110, 5, 1),
                          ),
                        ),
                      );
                    }

                    final tx = _transactions[index];
                    return TransactionItem(
                      type: tx['type'],
                      amount: tx['amount'],
                      date: tx['date'],
                      isCredit: tx['isCredit'],
                    );
                  },
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
