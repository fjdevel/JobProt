import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobprot/util/colors.dart';
import 'package:jobprot/widgets/widgetslogin.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isRememberMe = false;

Widget buildRememberCb() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
              data: ThemeData(unselectedWidgetColor: Colors.black87),
              child: Checkbox(
                value: isRememberMe,
                checkColor: dQuinaryColor,
                activeColor: Colors.black87,
                onChanged: (value) {
                  setState(() {
                    isRememberMe = value;
                  });
                },
              )),
          Text('Remember me',
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
            ),)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dSecundaryColor,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Stack(
          children: <Widget>[
            buildLogo(),
            Container( //hay que hacer otro container para la foto x.x
              margin: EdgeInsets.only(top: 150),
              decoration: BoxDecoration(
                color: dTertiaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(135)
                )
              ),
              height: double.infinity,
              width: double.infinity,

              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 120,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    buildLoginText(),
                    buildEmailEt(),
                    buildPassEt(),
                    buildRememberCb(),
                    buildLoginBtn(),
                    buildSignUpBtn(),
                    buildForgotPassBtn()
                  ],
                ),
              ),
            )
          ],
        ),

      ),
    ) ;
  }
}
