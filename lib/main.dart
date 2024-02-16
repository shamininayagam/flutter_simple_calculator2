import 'package:flutter/material.dart';
//import 'package:simple_calculator2/splashscreen';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myapp()
  ));
}
class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  TextEditingController controller1=TextEditingController();
  TextEditingController controller2=TextEditingController();

  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('CALCULATOR',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20),
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'First Number'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 40),
            TextField(
              controller: controller2,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Second Number'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height:40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {
                  double a= double.parse(controller1.text);
                  double b= double.parse(controller2.text);
                  setState(() {
                    result = a+b;
                  });

                }, child: Text('ADD')),
                ElevatedButton(onPressed: () {
                  double a= double.parse(controller1.text);
                  double b= double.parse(controller2.text);
                  setState(() {
                    result = a-b;
                  });
                }, child: Text('SUB')),
                ElevatedButton(onPressed: () {
                  double a= double.parse(controller1.text);
                  double b= double.parse(controller2.text);
                  setState(() {
                    result = a*b;
                  });
                }, child: Text('MUL')),
                ElevatedButton(onPressed: () {
                  double a= double.parse(controller1.text);
                  double b= double.parse(controller2.text);
                  setState(() {
                    result = a/b;
                  });
                }, child: Text('DIV')),
                ElevatedButton(onPressed: () {
                  double a= double.parse(controller1.text);
                  double b= double.parse(controller2.text);
                  setState(() {
                    result = a%b;
                  });
                }, child: Text('MOD')),
              ],
            ),
            SizedBox(height: 40.0),
            Text('RESULT : $result ',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,

            ),),


          ],
        ),

      ),
    );
  }
}


