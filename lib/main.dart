import 'package:flutter/material.dart';

void main() {
  runApp(const IDCardApp());
}

class IDCardApp extends StatelessWidget {
  const IDCardApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ID Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const IDCard(),
    );
  }
}

class IDCard extends StatefulWidget {
  const IDCard({super.key});

  @override
  State<IDCard> createState() => _IDCardState();
}

class _IDCardState extends State<IDCard> {
  @override
  Widget build(BuildContext context) {
    const double unit = 47;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("ID Card"),
      ),
      backgroundColor: Colors.blueAccent,

      body: Center(
        child: SizedBox(
          height: unit * 9,
          width: unit * 6,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(height: unit * 3.5, color: Colors.amber[600]),
                  Container(height: unit * 5.5, color: Colors.white),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: unit * 0.5, right: unit * 0.5, bottom: unit*0.2),
                child: Column(
                  spacing: 1.5,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: unit * 0.5,
                        bottom: unit * 0.5
                      ),
                      child: Image.asset('asset/images/NITTE.png'),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        top: unit * 0.1,
                        bottom: unit * 0.1,
                      ),
                      child: Image.asset(
                        'asset/images/image.JPG',
                        height: unit * 2.5,
                      ),
                    ),
                    Column(spacing: 10,
                      children: [
                        Text("HARSHITH P", style: TextStyle(fontSize: unit*0.34, fontWeight:FontWeight.bold, color: Colors.blue),),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("Colege   :   NMAMIT", style: TextStyle(fontSize: unit*0.34, fontWeight:FontWeight.bold),),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("Course   :   MCA", style: TextStyle(fontSize: unit*0.34, fontWeight:FontWeight.bold),),
                        ),

                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("USN       :   NNM24MC052", style: TextStyle(fontSize: unit*0.34, fontWeight:FontWeight.bold),),
                        ),
                      ],
                      
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("asset/images/principal.png", width: unit*2,),
                        Image.asset("asset/images/barcode.gif", width: unit*3,),

                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
