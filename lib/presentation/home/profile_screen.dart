import 'package:delivery_dig/theming/presentation/theme.dart';
import 'package:delivery_dig/theming/presentation/widgets/button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text('Profile'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: DeliveryColors.green,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: CircleAvatar(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Image.asset('asset/images/app-icon.png'),
                      ),
                      backgroundColor: DeliveryColors.green,
                      radius: 50,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'UserName',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
         
          Expanded(
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                    color: DeliveryColors.lightGrey,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'User Email address',
                            style: TextStyle(
                              fontSize: 20,
                              color: DeliveryColors.dark,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'User Personal Information',
                            style: TextStyle(
                              fontSize: 20,
                              color: DeliveryColors.dark,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            children: [
                              Text(
                                'change Theme',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: DeliveryColors.dark,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Switch(value: true, onChanged: (val) {}),
                            ],
                          ),
                          SizedBox(height: 5),
                          Center(
                            child: DeliveryButton(onTap: () {
                             
                            }, text: 'Logout'),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                   
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
