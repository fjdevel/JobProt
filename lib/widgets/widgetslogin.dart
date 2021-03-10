import 'package:flutter/material.dart';
import 'package:jobprot/util/colors.dart';

class buildLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal:141,
        vertical: 20
      ),
      width: 110,
      height: 110,
      decoration: BoxDecoration(
        color: dPrimaryColor,
        shape: BoxShape.circle
      ),
      /*child: Image.asset(
        'logoAgape.jpg',
        fit: BoxFit.cover,
      ),*/
    );
  }
}


class buildLoginText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Bienvenido',
      style: TextStyle(
          color: dSecundaryColor,
          fontSize: 42,
          fontWeight: FontWeight.w400
      ),
    );
  }
}

class buildEmailEt extends StatefulWidget {
  @override
  _buildEmailEtState createState() => _buildEmailEtState();
}

class _buildEmailEtState extends State<buildEmailEt> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 40
      ),
      width: 340,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              width: 1,
              color: Colors.white,
              style: BorderStyle.solid
          ),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                offset: const Offset(0.0, 3.0),
                blurRadius: 1.2,
                spreadRadius: 0.5
            )
          ]
      ),
      child: Stack(
        children: [
          Container(
              margin: EdgeInsets.only(
                  left: 20,
                  top: 10
              ),
              padding: EdgeInsets.only(top: 2),
              child: Text(
                "Correo Electrónico",
                style: TextStyle(fontSize: 11),
              )
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'ejemplo@mail.com',
              hintStyle: TextStyle(fontSize: 14),
              contentPadding: EdgeInsets.fromLTRB(20, 25, 0, 10),
              isDense: true,
            ),
            textAlignVertical: TextAlignVertical.bottom,
          ),
        ],
      ),
    );
  }
}

class buildPassEt extends StatefulWidget {
  @override
  _buildPassEtState createState() => _buildPassEtState();
}

class _buildPassEtState extends State<buildPassEt> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 40
      ),
      width: 340,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              width: 1,
              color: Colors.white,
              style: BorderStyle.solid
          ),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                offset: const Offset(0.0, 3.0),
                blurRadius: 1.2,
                spreadRadius: 0.5
            )
          ]
      ),
      child: Stack(
        children: [
          Container(
              margin: EdgeInsets.only(
                  left: 20,
                  top: 10
              ),
              padding: EdgeInsets.only(
                  top: 2
              ),
              child: Text(
                "Contraseña",
                style: TextStyle(fontSize: 11),
              )
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '*****************',
              hintStyle: TextStyle(fontSize: 14),
              contentPadding: EdgeInsets.fromLTRB(20, 25, 0, 10),
              isDense: true,
            ),
            textAlignVertical: TextAlignVertical.bottom,
          ),
        ],
      ),
    );
  }
}

class buildLoginBtn extends StatefulWidget {
  @override
  _buildLoginBtnState createState() => _buildLoginBtnState();
}

class _buildLoginBtnState extends State<buildLoginBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(vertical: 25),
      width: 340,
      child: RaisedButton(
        onPressed: () => print('Login Pressed'),
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        color: dSecundaryColor,
        child: Text(
          'Iniciar Sesión',
          style: TextStyle(
              color: dQuaternaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w300
          ),
        ),
      ),
    );
  }
}

class buildSignUpBtn extends StatefulWidget {
  @override
  _buildSignUpBtnState createState() => _buildSignUpBtnState();
}

class _buildSignUpBtnState extends State<buildSignUpBtn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: () => print("Sign Up Pressed"),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: '¿Aún no tienes cuenta?',
              style: TextStyle(
                  color: dSecundaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
              )
          ),
          TextSpan(
              text: ' Regístrate',
              style: TextStyle(
                  color: dSecundaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              )
          )
        ]
        ),
      ),
    );
  }
}

class buildForgotPassBtn extends StatefulWidget {
  @override
  _buildForgotPassBtnState createState() => _buildForgotPassBtnState();
}

class _buildForgotPassBtnState extends State<buildForgotPassBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.centerRight,
      child: FlatButton(
        //onPressed: () => print("Forgot Password pressed"),
        //padding: EdgeInsets.only(),
        onPressed: () {  },
        child: Text('Forgot Password?',
          style: TextStyle(
              color: dSecundaryColor,
              fontWeight: FontWeight.w400
          ),
        ),
      ),
    );
  }
}

