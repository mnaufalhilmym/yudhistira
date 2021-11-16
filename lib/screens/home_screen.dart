import 'package:flutter/material.dart';
import 'package:yudhistira/screens/games_screen.dart';
import '../widgets/custom_separator.dart';

class HomeScreen extends StatelessWidget {
  void showGames(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(GamesScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
              child: Image.asset('assets/images/maxresdefault.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomSeparator(),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Text(
                      'Gelang batik membawa keberuntungan',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).accentColor),
                    ),
                  ),
                  Text(
                    'Gelang yang berasal dari xyz ini merupakan kerajinan yang dibuat dengan bahan-bahan alam seperti batu-batuan cantik ... READ MORE',
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Column(
                            children: [
                              Container(
                                child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    'CATEGORIES',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    child: Container(
                                      padding: EdgeInsets.all(4),
                                      child: Column(
                                        children: [
                                          Container(
                                              height: 80,
                                              margin: EdgeInsets.only(bottom: 5),
                                              child: Image.asset('assets/images/accessories.png')),
                                          Text('Accessories')
                                        ],
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Container(
                                      padding: EdgeInsets.all(4),
                                      child: Column(
                                        children: [
                                          Container(
                                              height: 80,
                                              margin: EdgeInsets.only(bottom: 5),
                                              child: Image.asset('assets/images/decor.png')),
                                          Text('Decor')
                                        ],
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Container(
                                      padding: EdgeInsets.all(4),
                                      child: Column(
                                        children: [
                                          Container(
                                              height: 80,
                                              margin: EdgeInsets.only(bottom: 5),
                                              child: Image.asset(
                                                  'assets/images/wear.png')),
                                          Text('Wear')
                                        ],
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Container(
                                      padding: EdgeInsets.all(4),
                                      child: Column(
                                        children: [
                                          Container(
                                              height: 80,
                                              margin: EdgeInsets.only(bottom: 5),
                                              child: Image.asset('assets/images/furniture.png')),
                                          Text('Furniture')
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Column(
                            children: [
                              Container(
                                child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    'GAMES',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 80,
                                      margin: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(249, 213, 151, 1)),
                                      child: InkWell(
                                        onTap: () => showGames(context),
                                        child: Center(
                                          child: Text(
                                            "QUIZ",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 80,
                                      margin: EdgeInsets.only(left: 10),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(249, 213, 151, 1)),
                                      child: InkWell(
                                        onTap: () => showGames(context),
                                        child: Center(
                                          child: Text(
                                            "PUZZLE",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
