import 'package:flutter/material.dart';

import '../data.dart';
import '../widgets/stuff_item.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: DATA
            .map((data) => StuffItem(
                  data.id,
                  data.title,
                  data.photo,
                  data.price,
                ))
            .toList(),
      ),
    );
  }
}
