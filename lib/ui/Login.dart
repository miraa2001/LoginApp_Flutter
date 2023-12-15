import 'package:flutter/material.dart';
class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}
class LoginState extends State<Login>{
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  String _welcome="Mira";
  void _clear()
  {
    setState((){
      _usernameController.clear();
      _passwordController.clear();
    });
  }
  void _submit()
  {
    setState((){
      if(_usernameController.text.isNotEmpty && _passwordController.text.isNotEmpty)
        _welcome=_usernameController.text;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login App", style: TextStyle(backgroundColor: Colors.red))
      ),
      backgroundColor: Colors.grey.shade300,
      body: Container(
        alignment: Alignment.topCenter,
        child : Column(
          children: <Widget>[
            Image.asset('images/Logo.png',width:150.0,height:150.0),
            Container(
              height: 180,
              width: 380,
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      hintText : 'Username',
                      icon: Icon(Icons.person),
                    )
                  ),
                  TextField(
                    controll er: _passwordController,
                    decoration: InputDecoration(
                    hintText : 'Password',
                    icon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                  Center(
                    child: Row(
                      children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 55.0),
                        child: ElevatedButton(
                          onPressed:()=>_submit(),
                          child: Text("Submit",
                              style: TextStyle(color: Colors.white,
                                  fontSize: 20.5
                              )
                          ),
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                        )
                      ),
                      Container(
                            margin: EdgeInsets.only(left: 90.0),
                            child: ElevatedButton(
                              onPressed:()=>_clear(),
                              child: Text("Clear",
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 20.5
                                  )
                              ),
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                            )
                        )
                    ]
                    )
                  )
                ]
              )
            ),
            Container(
              alignment: Alignment.center,
              child: Text('Welcome, $_welcome',
                          style: TextStyle(color: Colors.black,
                                           fontSize: 24.0,
                                           fontWeight: FontWeight.w700))
            )
          ]
        )
      )
    );
  }
  
}