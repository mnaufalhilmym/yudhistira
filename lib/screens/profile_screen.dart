import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/photo_profile.jpg',
                    fit: BoxFit.cover,
                    width: 70,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Anjayani',
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/circle57.png',
                          width: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Platinum'),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Saldo',
                ),
                Text(
                  'IDR 999.999.999,99',
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Image.asset(
              'assets/images/profile_insight.png',
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Alamat',
                ),
                Text(
                  'Anjayani, 0907, Suko, Anjayon, Lema, Yogyakarta, Indonesia 764764',
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Play with us!',
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 80,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(248, 214, 150, 1),
                        ),
                        child: Center(
                          child: Text(
                            'QUIZ',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 80,
                        margin: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(248, 214, 150, 1),
                        ),
                        child: Center(
                          child: Text(
                            'PUZZLE',
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
