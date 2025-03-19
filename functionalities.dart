import 'package:flutter/material.dart';

class Functionalities extends StatefulWidget {   // write stf
  const Functionalities({super.key});

  @override
  State<Functionalities> createState() => _FunctionalitiesState();
}

class _FunctionalitiesState extends State<Functionalities> {
 TextEditingController form1_controller = TextEditingController();
 String result = '';
 TextEditingController form2_controller = TextEditingController();

 sum(){
   setState(() {
     result = (int.parse(form1_controller.text)+ int.parse(form2_controller.text)).toString();

   });
 }
 sub(){
   setState(() {
     result = (int.parse(form1_controller.text)- int.parse(form2_controller.text)).toString();

   });
 }
 calculator(String symbol) {
   if (symbol == '+') {
     setState(() {
       result =
           (int.parse(form1_controller.text) + int.parse(form2_controller.text))
               .toString();
     });
   }
   else if (symbol == '-') {
     setState(() {
       result =
           (int.parse(form1_controller.text) - int.parse(form2_controller.text))
               .toString();
     });
   }
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: form1_controller,
            decoration: InputDecoration(
                labelText: "1st Number"
            ),
          ),
          TextFormField(
            controller: form2_controller,
            decoration: InputDecoration(
                labelText: "2nd number"
            ),
          ),
          TextButton(
            onPressed: () {
              //sum();
              calculator("+");
            },
            child: Text("sum"),
          ),
          TextButton(
            onPressed: () {
              //sum();
              calculator("-");
            },
            child: Text("sub"),
          ),
          Text(result)
        ],
      ),
    );
  }
}
