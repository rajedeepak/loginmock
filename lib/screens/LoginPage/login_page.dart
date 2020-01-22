import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Welcome back',
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 10, 10, 10),
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white12,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 90,),
            myInputField(
              context,
              'Email Address',
            ),
            myInputField(
              context,
              'Password',
            ),
            Container(
              child: Text(
                'Forgot Password?',
                style: Theme.of(context).textTheme.body1.merge(TextStyle(
                      color: Color.fromARGB(255, 145, 138, 153),
                      fontSize: 17,
                    )),
              ),
              padding: EdgeInsets.all(15),
            ),
            SizedBox(height: 190,),
            Center(
              child: myButtonField(context, 'L O G I N',
                  Color.fromARGB(255, 111, 81, 145), Colors.white),
            ),
            Center(child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 5),
              child: Text('OR'),
            )),
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(30, 25, 30, 15),
                child: SizedBox(
                  height: 40,
                  child: RaisedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.group),
                    color: Color.fromARGB(255,230, 57, 0),
                    label: Text(
                      'L O G I N   W I T H   G M A I L',
                      style: Theme.of(context).textTheme.body1.merge(
                            TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                            ),
                          ),
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(40),
                    ),

                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                child: SizedBox(
                  height: 40,
                  child: RaisedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.group),
                    color: Color.fromARGB(255, 29, 83, 171),
                    label: Text(
                      'L O G I N   W I T H   F A C E B O O K',
                      style: Theme.of(context).textTheme.body1.merge(
                        TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(40),
                    ),

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myInputField(BuildContext context, String hint) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
            labelText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            )),
      ),
    );
  }

  Widget myButtonField(
    BuildContext context,
    String text,
    Color color,
    Color textColor, {
    Icon icon,
  }) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(40),
      ),
      onPressed: () {},
      color: color,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width * 5 / 7,
        child: Align(
          alignment: Alignment(0, 0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
