import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';

  void verifyLogin(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed('/main');
  }

  Widget textField(String labelText) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        maxLines: 1,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: Color.fromRGBO(204, 128, 50, 1),
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: Color.fromRGBO(204, 128, 50, 1),
              width: 2,
            ),
          ),
          labelStyle: TextStyle(
            color: Color.fromRGBO(204, 128, 50, 1),
          ),
          labelText: labelText,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgwayang.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.contain,
                    ),
                    height: 200,
                  ),
                  Container(
                    child: Text('Yudhistira Project'),
                  ),
                  textField('Email'),
                  textField('Password'),
                  SizedBox(
                    height: 30,
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Register'),
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: TextButton(
                      onPressed: () {},
                      child: Text('I forgot my password'),
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () => verifyLogin(context),
                    style: OutlinedButton.styleFrom(
                      shape: StadiumBorder(),
                      side: BorderSide(
                        color: Color.fromRGBO(204, 128, 50, 1),
                        width: 2,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text('Next'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
