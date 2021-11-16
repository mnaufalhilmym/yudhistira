import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 55,
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(147, 93, 55, 1),
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(147, 93, 55, 1),
                      width: 3,
                    ),
                  ),
                  suffixIconConstraints: BoxConstraints(
                    maxHeight: 40,
                    maxWidth: 40,
                  ),
                  suffixIcon: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Image.asset('assets/images/search.png')),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Image.asset('assets/images/ydhstr.png')
            ),
          ),
        ],
      ),
    );
  }
}