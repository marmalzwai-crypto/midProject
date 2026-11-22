import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../models/product.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr('products.${product.id}.name')),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                product.image,
                height: 280,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              context.tr('products.${product.id}.name'),
              style: textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              '${context.tr('details.price')}: ${product.price} LYD',
              style: textTheme.titleMedium?.copyWith(color: colorScheme.primary),
            ),
            const SizedBox(height: 16),
            Text(
              context.tr('details.description'),
              style: textTheme.titleMedium,
            ),
            const SizedBox(height: 4),
            Text(
              context.tr('products.${product.id}.description'),
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}