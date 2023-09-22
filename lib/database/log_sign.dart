import 'package:database/database/sign_up.dart';
import 'package:flutter/material.dart';

import 'login.dart';

void main(){
  runApp(MaterialApp(home: Login_Signup(),
  debugShowCheckedModeBanner: false,));
}

class Login_Signup extends StatefulWidget {
  const Login_Signup({Key? key}) : super(key: key);

  @override
  State<Login_Signup> createState() => _Login_SignupState();
}

class _Login_SignupState extends State<Login_Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 150.0),
              child: Text("Hello There!",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                "Automatic identity verification which enable you to verify your identity",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),),
            ),
          Image.network('https://static.vecteezy.com/system/resources/previews/005/879/539/original/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg'),

            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent.shade700),
                    minimumSize: MaterialStateProperty.all(Size(330, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Login_Form()));
                  }, child: Text("Login",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink),
                    minimumSize: MaterialStateProperty.all(Size(330, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),

                        )
                    )
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup_Form()));
                }, child: Text("Sign Up",style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}
