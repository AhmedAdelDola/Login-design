import 'package:flutter/material.dart';
import 'package:untitled1/SIGN%20IN.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      routes: {
        "one" : (context) => signin() ,
        'two' : (context) => MyApp()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
            image: AssetImage('images/Objects.png'),alignment: Alignment.topCenter)),
        child:Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 1,
                  child: Image.asset('images/Illustration (1).png',)),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.only(top: 50 , right:  20 , left: 20),
                  //height: double.infinity,
                  width: double.infinity,
                  //margin: EdgeInsets.only(top: 220),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(image: AssetImage('images/Background.png'),fit: BoxFit.cover) , borderRadius: BorderRadius.only(topLeft: Radius.circular(70),topRight: Radius.circular(70))),
                  child: Column(
                    children: [
                      Text('Get Started Free',style: TextStyle(color: Colors.white,fontSize: 40.33,fontWeight: FontWeight.w500)),
                      Text('Free Forever. No Credit Card Needed',textAlign: TextAlign.center,style: TextStyle(color: Color.fromRGBO(164, 164, 164, 100),fontSize: 14.33,fontWeight: FontWeight.w500)),
                      SizedBox(height: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Email Adress', style: TextStyle(color: Color.fromRGBO(164, 164, 164, 100),fontSize: 14.33,fontWeight: FontWeight.w500)),
                          SizedBox(height: 5,),
                          TextField(

                            decoration: InputDecoration(fillColor: Color.fromRGBO(164, 164, 164, 180),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              prefixIcon: Icon(Icons.mail),
                              hintText: 'yourname@gmail.com',
                              hintStyle: TextStyle(color: Color.fromRGBO(164, 164, 164, 100)),
                              prefixIconColor: Color.fromRGBO(164, 164, 164, 100),
                            ),
                          ),
                          SizedBox(height: 5,),

                          Text('Your Name', style: TextStyle(color: Color.fromRGBO(164, 164, 164, 100),fontSize: 14.33,fontWeight: FontWeight.w500)),
                          SizedBox(height: 5,),
                          TextField(

                            decoration: InputDecoration(fillColor: Color.fromRGBO(164, 164, 164, 180),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              prefixIcon: Icon(Icons.person),
                              hintText: '@yourname',
                              hintStyle: TextStyle(color: Color.fromRGBO(164, 164, 164, 100)),
                              prefixIconColor: Color.fromRGBO(164, 164, 164, 100),





                            ),

                          ),
                          SizedBox(height: 10,),
                          Text('Password', style: TextStyle(color: Color.fromRGBO(164, 164, 164, 100),fontSize: 14.33,fontWeight: FontWeight.w500)),
                          SizedBox(height: 5,),
                          TextField(

                            decoration: InputDecoration(fillColor: Color.fromRGBO(164, 164, 164, 180),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              prefixIcon: Icon(Icons.vpn_key_rounded),
                              hintText: 'yourPassword',
                              hintStyle: TextStyle(color: Color.fromRGBO(164, 164, 164, 100)),
                              prefixIconColor: Color.fromRGBO(164, 164, 164, 100),





                            ),

                          ),
                          SizedBox(height: 20,)
                        ],
                      ),

                      InkWell(


                          onTap: (){
                            Navigator.of(context).pushReplacementNamed("one");
                          },
                          child: Image.asset('images/SignUp Button.png',))

                    ],
                  ),
                ),
              ),
            ],
          ),
        ) ,),
    );
  }
}
