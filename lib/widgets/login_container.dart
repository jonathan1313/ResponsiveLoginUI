import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginContainer extends StatefulWidget {
  String type;

  LoginContainer({this.type});

  @override
  _LoginContainerState createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {
  @override
  Widget build(BuildContext context) {
    final EdgeInsets _defaultPadding = EdgeInsets.symmetric(
        horizontal: (widget.type == 'desktop')
            ? 110.0
            : (widget.type == 'tablet') ? 50.0 : 20.0);

    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        margin: EdgeInsets.symmetric(vertical: 50.0),
        width: (widget.type == 'desktop')
        ? MediaQuery.of(context).size.width * 0.5
        : (widget.type == 'tablet') 
        ? MediaQuery.of(context).size.width * 0.7 : MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
            color: Color.fromRGBO(71, 9, 110, 0.5),
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10.0,
                offset: Offset(0.0, 0.0),
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: _defaultPadding,
              child: Row(
                children: [
                  Spacer(),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Login with facebook'.toUpperCase(),
                      style: TextStyle(color: Colors.white, fontSize: 10.0),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Center(
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(71, 9, 110, 1),
                                  width: 5.0,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                width: 100.0,
                                height: 100.0,
                                padding: EdgeInsets.all(0.5),
                                decoration: BoxDecoration(
                                    color: Colors.yellow[800],
                                    shape: BoxShape.circle),
                                child: CircleAvatar(
                                  backgroundColor:
                                      Color.fromRGBO(71, 9, 110, 1),
                                  child: Icon(
                                    MdiIcons.facebook,
                                    size: 42.0,
                                    color: Color.fromRGBO(75, 110, 169, 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              margin: EdgeInsets.only(left: 80.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(71, 9, 110, 1),
                                  width: 5.0,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                width: 100.0,
                                height: 100.0,
                                padding: EdgeInsets.all(0.5),
                                decoration: BoxDecoration(
                                    color: Colors.yellow[800],
                                    shape: BoxShape.circle),
                                child: CircleAvatar(
                                  backgroundColor:
                                      Color.fromRGBO(71, 9, 110, 1),
                                  child: Icon(
                                    MdiIcons.twitter,
                                    size: 42.0,
                                    color: Color.fromRGBO(101, 187, 242, 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Login with twitter'.toUpperCase(),
                      style: TextStyle(color: Colors.white, fontSize: 10.0),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: _defaultPadding,
              child: TextFormField(
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email',
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.yellow[800], width: 0.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.5),
                  ),
                  hintStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.black.withOpacity(0.2),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: _defaultPadding,
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.yellow[800], width: 0.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.5),
                  ),
                  hintStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.black.withOpacity(0.2),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'I forgot my password?',
              style: TextStyle(color: Colors.yellow[800], fontSize: 16.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: _defaultPadding,
              child: Container(
                width: double.infinity,
                height: 45.0,
                child: FlatButton(
                  onPressed: () {},
                  color: Colors.green,
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.yellow[800],
              thickness: 0.5,
            ),
            Padding(
              padding: _defaultPadding,
              child: Container(
                width: double.infinity,
                height: 45.0,
                child: FlatButton(
                  onPressed: () {},
                  color: Colors.yellow[800],
                  child: Text(
                    'Create New Account',
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
