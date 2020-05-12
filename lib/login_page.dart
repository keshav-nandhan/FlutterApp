import 'package:flutter/material.dart';
import 'package:firebase_auth_ui/firebase_auth_ui.dart';
import 'package:firebase_auth_ui/providers.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return Container(
          decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.2),
                   BlendMode.overlay),
                  image: AssetImage("android/app/src/assets/background.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
          child: Column(         
            children:<Widget>[
              Expanded(
            flex: 1,
            child: Container(
            ),
          ),
           Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "MOTHI PAARU\n",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      TextSpan(
                        text: "Powered by PISTAH",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
              ],
            ),
           ),
              MyButton()                  //Loginbutton(),
                  //MyButton(),
                  ],
                  ),
              );

  }
}

class Loginbutton extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final title ="Welcome to T-BUDDY";
    return Container(
            child:Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
             Directionality(textDirection: TextDirection.rtl, child: Text(title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        fontSize: 34,
                        color: Colors.black38,
                        ),
                    ),
                  ),
                ],
              ),
   );
  }
}


class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
      child: FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return MyApp();
                        },
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 25),
                      padding:
                          EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blueAccent,
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Login with Facebook",
                            style: Theme.of(context).textTheme.button.copyWith(
                                  color: Colors.black,
                                ),
                          ),
                          SizedBox(width: 8),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ),
              ),
    );
  }
}

class FireAuthUI  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget loginbutton=RaisedButton(
      onPressed: () => FirebaseAuthUi.instance().launchAuth(
          [
            AuthProvider.email(), // Login/Sign up with Email and password
            AuthProvider.google(), // Login with Google
            AuthProvider.facebook(), // Login with Facebook
	    AuthProvider.twitter(), // Login with Twitter
	    AuthProvider.phone(), // Login with Phone number
          ],
          tosUrl: "https://my-terms-url", // Optional
          privacyPolicyUrl: "https://my-privacy-policy", // Optional,
        )
        .then((firebaseUser) =>
            print("Logged in user is ${firebaseUser.displayName}"))
        .catchError((error) => print("Error $error")),
        );
        return loginbutton;
  }

  }

