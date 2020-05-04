import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formkey = GlobalKey<FormState>();
  bool _obscureText = true;
  String _username,_password,_email;

  Widget _showTitle(){
    return   Text('Register',style: Theme.of(context).textTheme.headline,);

  }

  Widget _showUsername(){
    return   Padding(padding:EdgeInsets.only(top:20.0),

      child:TextFormField(
        onSaved: (val) => _username = val,
        validator: (val) => val.length < 6 ? "username too short ": null,

        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Username",
            hintText: "Enter username,min length 6",
            icon: Icon(Icons.face,color: Colors.grey,)
        ),
      ),
    );
  }

  Widget _showEmail(){
    return   Padding(padding:EdgeInsets.only(top:20.0),
      child:TextFormField(
        onSaved: (val) => _email = val,
        validator: (val) => !val.contains('@')?"Username too short":null,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Email",
            hintText: "Enter valid Email",
            icon: Icon(Icons.mail_outline,color: Colors.grey,)
        ),
      ),
    );
  }

  Widget _showPassword(){
    return Padding(padding:EdgeInsets.only(top:20.0),
        child:TextFormField(
          onSaved: (val) => _password = val,
          validator: (val) => val.length < 6 ? "username too short" : null,
          obscureText: true,

          decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: (){
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },

                child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off

                ),
              ),


              border: OutlineInputBorder(),
              labelText: "Password",
              hintText: "Enter username,min length 6",
              icon: Icon(Icons.lock_outline,color: Colors.grey,)
          ),
        ),
      );

  }

  Widget _showButton(){
    return
      Padding(
        padding:  EdgeInsets.only(top:20.0),
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: _submit,
              child: Text("Submit",style: Theme.of(context).textTheme.body1.copyWith(color: Colors.black)),
              elevation: 8.0,
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
            ),
            FlatButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/login');

                      },

                child:Text("Existing user? login")
            )
          ],
        ),
      );
  }

  void _submit(){
  final form = _formkey.currentState;

  if(form.validate()){
    form.save();
    print("username $_username,Email $_email,Password $_password");
  }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Register"),
        ),

      ),
      body: Container(

        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
              child:Column(
                children: <Widget>[
                  _showTitle(),
                  _showUsername(),
                  _showEmail(),
                  _showPassword(),
                  _showButton()
                ],

              )
          ),
        ),
      ),
    );
  }
}
