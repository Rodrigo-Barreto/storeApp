import 'package:app/components/product_item.dart';
import 'package:app/provider/products.dart';
import 'package:app/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Products products = Provider.of(context);
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
        title: Text('Products Manager'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
            itemCount: products.itemsCount,
            itemBuilder: (ctx, item) {
              return Column(
                children: [
                  ProductItem(
                    product: products.items[item],
                  ),
                  Divider(),
                ],
              );
            }),
      ),
    );
  }
}