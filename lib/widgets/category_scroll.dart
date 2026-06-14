import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/category.dart';

class CategoryScroll extends StatelessWidget {
  final List<TransactionCategory> categories;
  final Map<String, double> categoryTotals;

  const CategoryScroll({
    super.key,
    required this.categories,
    required this.categoryTotals,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: Text(
            'Categories',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final cat = categories[index];
              final total = categoryTotals[cat.id] ?? 0.0;
              return _CategoryItem(category: cat, totalAmount: total);
            },
          ),
        ),
      ],
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final TransactionCategory category;
  final double totalAmount;

  const _CategoryItem({
    required this.category,
    required this.totalAmount,
  });

  @override
  Widget build(BuildContext context) {
    final currencyFormatter =
        NumberFormat.compactCurrency(symbol: '\$', decimalDigits: 0);

    return Container(
      width: 100,
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: category.color.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(category.icon, color: category.color, size: 24),
          ),
          const SizedBox(height: 8),
          Text(
            category.name,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            currencyFormatter.format(totalAmount),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).textTheme.bodyMedium?.color,
                ),
          ),
        ],
      ),
    );
  }
}
