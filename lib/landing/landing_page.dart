import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/login/login.dart';
import 'package:flutter_application_1/auth/register/register.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                'Legacy',
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BilboSwashCaps-Regular',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Celebrating 70 years of excellence....',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BilboSwashCaps-Regular',
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/chat.png'),
                    )
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50,40,50,30),
                child: MaterialButton(
                  height: 50,
                  minWidth: double.infinity,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      CupertinoPageRoute(
                        builder: (_) => Login(),
                      ),
                    );
                  },
                  color: Colors.blueAccent[700],
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text('Log-in' , style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50,10,50,10),
                child: MaterialButton(
                  height: 50,
                  minWidth: double.infinity,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      CupertinoPageRoute(
                        builder: (_) => Register(),
                      ),
                    );
                  },
                  color: Colors.blueAccent[700],
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text('Sign-up' , style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white,
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
