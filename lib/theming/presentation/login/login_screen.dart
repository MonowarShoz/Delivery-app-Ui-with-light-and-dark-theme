import 'package:delivery_dig/theming/presentation/home/home_screen.dart';
import 'package:delivery_dig/theming/presentation/theme.dart';
import 'package:delivery_dig/theming/presentation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

const logoSize = 40.0;

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final exSize = 50.0;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: LayoutBuilder(builder: (context, constraints) {
              return Stack(
                children: [
                  Positioned(
                    bottom: logoSize,
                    left: -exSize / 2,
                    right: -exSize / 2,
                    height: width + exSize,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [
                            0.5,
                            1.0,
                          ],
                          colors: deliveryGradients,
                        ),
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(200)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: logoSize,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset('asset/image/app-icon.png'),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 30),
                    Text(
                      'Login',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'User Name',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your user name',
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Password',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        prefixIcon: Icon(
                          Icons.password_outlined,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: DeliveryButton(
              text: 'Login',
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (_) => HomeScreen(),
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
