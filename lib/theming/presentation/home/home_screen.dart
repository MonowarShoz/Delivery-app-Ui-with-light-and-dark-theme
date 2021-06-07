import 'package:delivery_dig/theming/presentation/products/products_screen.dart';
import 'package:delivery_dig/theming/presentation/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: IndexedStack(
              index: currentIndex,
              children: [
                ProductScreen(),
                Text('currentIndex 1 is : $currentIndex'),
                Text('currentIndex 2 is : $currentIndex'),
                Text('currentIndex 3 is : $currentIndex'),
                Text('currentIndex 4 is : $currentIndex'),
                Text('currentIndex 5 is : $currentIndex'),
              ],
            ),
          ),
          _NavigationBar(
            index: currentIndex,
            onIndexSelected: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ],
      ),
    );
  }
}

class _NavigationBar extends StatelessWidget {
  final int index;
  final ValueChanged<int> onIndexSelected;
  const _NavigationBar({
    Key? key,
    required this.index,
    required this.onIndexSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: DeliveryColors.green, width: 1,),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                child: IconButton(
                  onPressed: () => onIndexSelected(0),
                  icon: Icon(Icons.home, color: index == 0 ? DeliveryColors.white : DeliveryColors.green,),
                ),
              ),
              Material(
                child: IconButton(
                  onPressed: () => onIndexSelected(1),
                  icon: Icon(Icons.store,color: index == 1 ? DeliveryColors.white : DeliveryColors.green,),
                ),
              ),
              Material(
                child: CircleAvatar(
                  backgroundColor: Colors.purple,
                  child: IconButton(
                    onPressed: () => onIndexSelected(2),
                    icon: Icon(Icons.shopping_basket,color: index == 2 ? DeliveryColors.white : DeliveryColors.green),
                  ),
                ),
              ),
              Material(
                child: IconButton(
                  onPressed: () => onIndexSelected(3),
                  icon: Icon(Icons.favorite_border,color: index == 3 ? DeliveryColors.white : DeliveryColors.green),
                ),
              ),
              InkWell(
                onTap: () => onIndexSelected(4),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
