import 'package:flutter/material.dart';

class mylogin extends StatefulWidget {
  const mylogin({super.key});

  @override
  _myloginState createState() => _myloginState();
}

class _myloginState extends State<mylogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 121, 22),
      body:Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 55,top: 130),
            child: const Text('SELAMAT DATANG',
            style:TextStyle(
              color: Colors.black,
            letterSpacing: 3,
              fontSize: 33,
            ),
            ),

          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5),

              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                       const SizedBox(
                    height: 30,
                    ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('sig in ',
                        style: TextStyle(
                          fontSize: 30,
                        ),),

                        CircleAvatar(
                          radius: 30,
                          backgroundColor: const Color(
                            0xff4c505b
                          ),
                          child: IconButton(
                            onPressed: (){} ,
                            icon: const Icon(Icons.arrow_forward),
                          ),
                        )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, 'register');
                      },
                          child: const Text('Sign up',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color(0xff4c505b)
                          ),
                          ),
                      ),
                        TextButton(onPressed: (){},
                        child: const Text('Forgot Password ?',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: Color(0xff4c505b),
                        ),
                      ),
                    )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}