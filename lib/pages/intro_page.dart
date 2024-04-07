import 'package:flutter/material.dart';

import 'home_Screen.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            children: [
              SizedBox(height: 50,),

              //logo here
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset(
                  "assets/images/nikelogo.png",
                  height: 200,
                ),
              ),
              SizedBox(
                height: 48,
              ),

              //   title here
              const Text(
                "Just Do It",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
SizedBox(height: 48,),
              //   sub title
              const Text(
                "Brand new sneakers and custom kicks made with premium quality",
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 48,),

              //   start new button
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text("Shop Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )

              //
            ],
          ),
        ),
      ),
    );
  }
}
