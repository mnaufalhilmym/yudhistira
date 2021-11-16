import 'package:flutter/material.dart';
import '../data.dart';

class StuffScreen extends StatelessWidget {
  static const routeName = '/stuff';

  @override
  Widget build(BuildContext context) {
    final itemId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedItem = DATA.firstWhere((item) => item.id == itemId);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Text('Under construction'),
      ),
    );
  }
}
