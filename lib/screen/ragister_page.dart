import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              child:Column(
                children: <Widget>[

                  Text('Register',style: Theme.of(context).textTheme.headline,),

                  Padding(padding:EdgeInsets.only(top:20.0),

                     child:TextFormField(

                       decoration: InputDecoration(
                         border: OutlineInputBorder(),
                         labelText: "Username",
                         hintText: "Enter username,min length 6",
                         icon: Icon(Icons.face,color: Colors.grey,)
                       ), 
                  ),
                  ),

                  Padding(padding:EdgeInsets.only(top:20.0),
                    child:TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Email",
                          hintText: "Enter valid Email",
                          icon: Icon(Icons.mail_outline,color: Colors.grey,)
                      ),
                    ),
                  ),

                  Padding(padding:EdgeInsets.only(top:20.0),
                    child:TextFormField(
                      obscureText: true,

                      decoration: InputDecoration(

                          border: OutlineInputBorder(),
                          labelText: "Password",
                          hintText: "Enter username,min length 6",
                          icon: Icon(Icons.lock_outline,color: Colors.grey,)
                      ),
                    ),
                  ),
                  
                  Padding(
                      padding:  EdgeInsets.only(top:20.0),
                    child: Column(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: (){print("submit");},
                          child: Text("Submit",style: Theme.of(context).textTheme.body1.copyWith(color: Colors.black)),
                          elevation: 8.0,
                          color: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                          ),
                        ),
                        FlatButton(
                            onPressed: (){print("login");},

                            child:Text("Existing user? login")
                        )
                      ],
                    ),
                  ),

                  


                ],

              )
          ),
        ),
      ),
    );
  }
}
