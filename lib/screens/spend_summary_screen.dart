import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../widgets/header_card.dart';
import '../widgets/category_scroll.dart';
import '../widgets/transaction_list.dart';

class SpendSummaryScreen extends StatelessWidget {
  const SpendSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Generate mock data values
    final totalSpend = MockData.totalSpend;
    // Hardcoding a 12.5% increase for the mock UI
    final percentageChange = 12.5; 
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spend Summary', style: TextStyle(fontWeight: FontWeight.w600)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: HeaderCard(
                  totalSpend: totalSpend,
                  percentageChange: percentageChange,
                ),
              ),
              const SizedBox(height: 16),
              CategoryScroll(
                categories: MockData.categories,
                categoryTotals: MockData.categoryTotals,
              ),
              const SizedBox(height: 8),
              TransactionList(
                transactions: MockData.recentTransactions,
              ),
              // Extra space at bottom to prevent FAB from overlapping last item
              const SizedBox(height: 80), 
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Mock action for adding a new transaction
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Add transaction clicked')),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
