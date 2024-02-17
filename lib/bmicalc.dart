import 'package:flutter/material.dart';

class Bmicalculator extends StatefulWidget {
  const Bmicalculator({Key? key}) : super(key: key);

  @override
  State<Bmicalculator> createState() => _BmicalculatorState();
}

class _BmicalculatorState extends State<Bmicalculator> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculate(){
    h_value=double.parse(height.text)/100;
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(
          'BmiCalculator',
          style: TextStyle(
            color: Colors.greenAccent,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(

            controller: height,

            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: 'enter',
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(width: 3, color: Colors.yellowAccent),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 4, color: Colors.white),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                filled: true,
                fillColor: Colors.teal),
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          TextField(


            controller: weight,



            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: 'enter',
                focusedBorder: OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(width: 3, color: Colors.yellowAccent),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 4, color: Colors.white),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                filled: true,
                fillColor: Colors.teal),
            style: TextStyle(color: Colors.white),
          ),
          TextButton(
              onPressed: () {calculate();
                setState(() {

                });}, child: Text('Calculate')),
          Text('bmi=$result')
        ]),
      ),
    );
  }
}
