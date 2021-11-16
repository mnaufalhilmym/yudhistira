import 'package:flutter/material.dart';
import '../widgets/custom_appbar.dart';

class GamesScreen extends StatelessWidget {
  static const routeName = '/games';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bgwayang.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              CustomAppBar(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Wrap(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            'Games',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 36,
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 200,
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                  'assets/images/maxresdefault.jpg'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 5),
                                child: Text(
                                  'KAPAN INDONESIA MERDEKA?',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      width: double.infinity,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(249, 213, 151, 1),
                                      ),
                                      child: Center(
                                        child: Text('3 Agustus 1940'),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      width: double.infinity,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(249, 213, 151, 1),
                                      ),
                                      child: Center(
                                        child: Text('17 Agustus 1945'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      width: double.infinity,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(249, 213, 151, 1),
                                      ),
                                      child: Center(
                                        child: Text('9 Agustus 1940'),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      width: double.infinity,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(249, 213, 151, 1),
                                      ),
                                      child: Center(
                                        child: Text('17 Juni 1945'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
