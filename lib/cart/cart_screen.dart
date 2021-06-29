import 'package:delivery_dig/theming/data/products.dart';
import 'package:delivery_dig/theming/model/product.dart';
import 'package:delivery_dig/theming/presentation/theme.dart';
import 'package:delivery_dig/theming/presentation/widgets/button.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final VoidCallback onShopping;
  const CartScreen({Key? key, required this.onShopping}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text('Cart'),
        ),
      ),
      body: FullCart(),
      // body: EmptyCart(
      //   onShopping: onShopping,
      // ),
    );
  }
}

class FullCart extends StatelessWidget {
  const FullCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemExtent: 230,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return CartProduct(
                    product: product,
                  );
                }),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              margin: EdgeInsets.all(5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'SubTotal :',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                        Text(
                          '\$ 20 Taka',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ],
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Charge :',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                        Text(
                          'free',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ],
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total :',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                        Text(
                          '\$ 100 Taka',
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    DeliveryButton(onTap: (){}, text: 'CheckOut'),
                  ],
                ),
              ),
              color: DeliveryColors.lightGrey,
            ),
          ),
        ),
      ],
    );
  }
}

class CartProduct extends StatelessWidget {
  const CartProduct({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.symmetric(horizontal: 4),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                    Text(product.name, style: TextStyle(fontSize: 20),),
                    const SizedBox(height: 10),
                    Text(
                      product.description,
                      style: TextStyle(fontSize: 15),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: DeliveryColors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: InkWell(
                            child: Icon(Icons.remove,size: 30,),
                            onTap: () {},
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('2',style: TextStyle(fontSize: 20),),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: DeliveryColors.purple,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: InkWell(
                            child: Icon(Icons.add, size: 30,),
                            onTap: () {},
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text('\$${product.price}', style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EmptyCart extends StatelessWidget {
  final VoidCallback onShopping;

  const EmptyCart({Key? key, required this.onShopping}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'asset/images/sad2.png',
          height: 90,
        ),
        const SizedBox(height: 20),
        Text(
          'No products in the cart',
          textAlign: TextAlign.center,
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        const SizedBox(height: 20),
        Center(
          child: ElevatedButton(
              onPressed: onShopping,
              child: Text(
                "Go Shopping",
              ),
              style: ElevatedButton.styleFrom(
                onPrimary: DeliveryColors.white,
                primary: DeliveryColors.purple,
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              )),
        ),
      ],
    );
  }
}
