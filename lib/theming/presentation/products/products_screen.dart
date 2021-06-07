import 'package:delivery_dig/theming/data/products.dart';
import 'package:delivery_dig/theming/model/product.dart';
import 'package:delivery_dig/theming/presentation/home/home_screen.dart';
import 'package:delivery_dig/theming/presentation/widgets/button.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text('Products'),
        ),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5,
            crossAxisCount: 2,
            childAspectRatio: width  / height ,
            mainAxisSpacing: 5,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return _ProductItem(
              product: product,
            );
          }),
    );
  }
}

class _ProductItem extends StatelessWidget {
  const _ProductItem({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
   
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(product.name),
                  const SizedBox(height: 10),
                  Text(
                    product.description,
                    style: Theme.of(context).textTheme.overline,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Text('\$${product.price}'),
                ],
              ),
            ),
            DeliveryButton(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
              ),
              text: 'ADD',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
