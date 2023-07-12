
import 'package:flutter/material.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => signinState();
}

class signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(

            color: Colors.black,
            image: DecorationImage(

                image: AssetImage('images/Objects.png') ,alignment: Alignment.topCenter)),
        child:Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded( flex: 1,
                child: Image.asset('images/Illustration.png',),
              ),
              Expanded( flex: 3,
                child: Container(
                  padding: EdgeInsets.all( 30),
                  height: double.infinity,
                  width: double.infinity,
                  //margin: EdgeInsets.only(top: 220),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(image: AssetImage('images/Background.png'),fit: BoxFit.cover, opacity: 100, ) , borderRadius: BorderRadius.only(topLeft: Radius.circular(70),topRight: Radius.circular(70))),
                  child: Column(
                    children: [
                      Text('Welcome Back!',style: TextStyle(color: Colors.white,fontSize: 40.33,fontWeight: FontWeight.w500)),
                      Text('welcome back we missed you',textAlign: TextAlign.center,style: TextStyle(color: Color.fromRGBO(164, 164, 164, 100),fontSize: 14.33,fontWeight: FontWeight.w500)),
                      SizedBox(height: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                              prefixIcon: Icon(Icons.vpn_key_sharp),
                              hintText: 'yourPassword',
                              hintStyle: TextStyle(color: Color.fromRGBO(164, 164, 164, 100)),
                              prefixIconColor: Color.fromRGBO(164, 164, 164, 100),
                            ),
                          ),
                          Column(
                              crossAxisAlignment:CrossAxisAlignment.end ,
                              children: [
                                SizedBox(height: 10,),
                                InkWell(


                                  onTap: (){},
                                  child:Text('Forgot Password?',style: TextStyle(color: Color.fromRGBO(164, 164, 164, 100),fontSize: 11.33,fontWeight: FontWeight.w500)),)]),
                          SizedBox(height: 20,)
                        ],
                      ),

                      InkWell(


                          onTap: (){
                            Navigator.of(context).pushReplacementNamed('two');
                          },
                          child: Image.asset('images/Signin Button.png',))

                    ],
                  ),
                ),
              ),

            ],
          ),
        ) ,),
      ),
    );

  }
}
