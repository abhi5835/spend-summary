import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/transaction.dart';

class MockData {
  static const List<TransactionCategory> categories = [
    TransactionCategory(id: 'c1', name: 'Food', icon: Icons.fastfood_rounded, color: Colors.orange),
    TransactionCategory(id: 'c2', name: 'Travel', icon: Icons.flight_takeoff_rounded, color: Colors.blue),
    TransactionCategory(id: 'c3', name: 'Shopping', icon: Icons.shopping_bag_rounded, color: Colors.purple),
    TransactionCategory(id: 'c4', name: 'Entertainment', icon: Icons.movie_rounded, color: Colors.red),
    TransactionCategory(id: 'c5', name: 'Utilities', icon: Icons.bolt_rounded, color: Colors.amber),
  ];

  static Map<String, double> get categoryTotals {
    final Map<String, double> totals = {};
    for (var cat in categories) {
      totals[cat.id] = 0.0;
    }
    for (var tx in recentTransactions) {
      totals[tx.category.id] = (totals[tx.category.id] ?? 0) + tx.amount;
    }
    return totals;
  }

  static double get totalSpend {
    return recentTransactions.fold(0.0, (sum, tx) => sum + tx.amount);
  }

  // Generate exactly 57 transactions as requested
  static final List<Transaction> recentTransactions = List.generate(57, (index) {
    final categoryIndex = index % categories.length;
    final cat = categories[categoryIndex];
    final amount = 10.0 + (index * 2.5) % 150; // Some variation in amount
    final daysAgo = index ~/ 2; // Spread over approx 28 days
    
    return Transaction(
      id: 'tx_$index',
      title: '${cat.name} Expense ${index + 1}',
      amount: amount,
      date: DateTime.now().subtract(Duration(days: daysAgo, hours: index * 3)),
      category: cat,
    );
  });
}
