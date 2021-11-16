import 'package:flutter/material.dart';

import '../screens/stuff_screen.dart';

class StuffItem extends StatelessWidget {
  final String id;
  final String title;
  final String photo;
  final String price;

  StuffItem(this.id, this.title, this.photo, this.price);

  void selectStuffItem(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(StuffScreen.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectStuffItem(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    photo,
                    fit: BoxFit.cover,
                  )),
            ),
            Expanded(
              flex: 1,
              child: Text(
                title,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
