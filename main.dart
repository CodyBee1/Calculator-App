// import 'package:flutter/material.dart';
// import 'package:math_expressions/math_expressions.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Calculator(),
//     ),
//   );
// }

// class Calculator extends StatefulWidget {
//   const Calculator({Key? key}) : super(key: key);

//   @override
//   _CalculatorState createState() => _CalculatorState();
// }

// class _CalculatorState extends State<Calculator> {
//   double firstNumber = 0.0;
//   double secondNumber = 0.0;
//   var input = '';
//   var output = '';
//   var operation = '';

//   get buttoncol => null;

//   onButtonClick(value) {
//     if (value == 'AC') {
//       input = '';
//       output = '';
//     } else if (value == "<-") {
//       if (input.isNotEmpty) input = input.substring(0, input.length - 1);
//     } else if (value == "=") {
//       var userInput = input;
//       userInput = userInput.replaceAll("X", "*");
//       Parser p = Parser();
//       Expression expression = p.parse(userInput);
//       ContextModel cm = ContextModel();
//       var finalValue = expression.evaluate(EvaluationType.REAL, cm);
//       output = finalValue.toString();
//     } else {
//       input = input + value;
//     }

//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Column(
//         children: [
//           Expanded(
//             child: Container(
//               width: double.infinity,
//               padding: const EdgeInsets.all(12),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Text(
//                     input,
//                     style: const TextStyle(fontSize: 48, color: Colors.white),
//                   ),
//                   const SizedBox(
//                     height: 60,
//                   ),
//                   Text(
//                     output,
//                     style: const TextStyle(
//                       fontSize: 34,
//                       color: Colors.white,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 40,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Row(
//             children: [
//               button(
//                 text: "AC",
//                 textColor: Colors.white,
//                 buttonBGColor: const Color.fromARGB(255, 80, 80, 80),
//               ),
//               button(text: "<-"),
//               button(text: "+/-"),
//               button(text: "÷"),
//             ],
//           ),
//           Row(
//             children: [
//               button(text: "7"),
//               button(text: "8"),
//               button(text: "9"),
//               button(text: "X"),
//             ],
//           ),
//           Row(
//             children: [
//               button(text: "4"),
//               button(text: "5"),
//               button(text: "6"),
//               button(text: "-"),
//             ],
//           ),
//           Row(
//             children: [
//               button(text: "1"),
//               button(text: "2"),
//               button(text: "3"),
//               button(text: "+"),
//             ],
//           ),
//           Row(
//             children: [
//               button(text: "%"),
//               button(text: "0"),
//               button(text: "."),
//               button(text: "="),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget button({text, textColor = Colors.white, buttonBGColor}) {
//     return Expanded(
//       child: Container(
//         margin: const EdgeInsets.all(8),
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             padding: const EdgeInsets.all(22),
//             primary: buttonBGColor ?? buttoncol,
//           ),
//           onPressed: () => onButtonClick(text),
//           child: Text(
//             text,
//             style: TextStyle(
//               fontSize: 18,
//               color: textColor,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:calculator/colors.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Calculator(),
    ),
  );
}
// p1

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
//variables
  double firstnumber = 0.0;
  double secnumber = 0.0;

  var input = '';
  var output = '';
  var operation = '';

  onbuttonClick(value) {
    //if we press AC
    if (value == 'AC') {
      input = '';
      output = '';
    } else if (value == "<-") {
      if (input.isNotEmpty) input = input.substring(0, input.length - 1);
    } else if (value == "=") {
      var userInput = input;
      userInput = input.replaceAll("X", "*");
      Parser p = Parser();
      Expression expression = p.parse(userInput);
      ContextModel cm = ContextModel();
      var finalvalue = expression.evaluate(EvaluationType.REAL, cm);
      output = finalvalue.toString();
    } else {
      input = input + value;
    }

    setState(() {});
  }

  // onbuttonClick(value) {
  //   //if we press AC
  //   if (value == 'AC') {
  //     input = '';
  //     output = '';
  //   } else if (value == "<-") {
  //     if (input.isNotEmpty) input = input.substring(0, input.length - 1);
  //   } else if (value == "=") {
  //     var userInput = input;
  //     userInput = userInput.replaceAll("X", "*");
  //     Parser p = Parser();
  //     Expression expression = p.parse(userInput);
  //     ContextModel cm = ContextModel();
  //     var finalvalue = expression.evaluate(EvaluationType.REAL, cm);
  //     output = finalvalue.toString();
  //   } else {
  //     input = input + value;
  //   }

  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
//input

          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    input,
                    style: const TextStyle(fontSize: 48, color: Colors.white),
                  ),

                  //gap bw i/p and o/p

                  const SizedBox(
                    height: 60,
                  ),

                  //output

                  Text(
                    output,
                    style: const TextStyle(fontSize: 34, color: Colors.white
                        // color: Colors.white.withOpacity(0.7),
                        ),
                  ),

                  //gap bw output and button box
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),

          //button_area

          Row(
            children: [
              button(
                text: "AC",
                tcolor: orcol,
                buttonBGcol: const Color.fromARGB(255, 80, 80, 80),
              ),
              button(text: "<-", tcolor: orcol),
              button(text: "+/-", tcolor: orcol),
              button(text: "÷", tcolor: orcol),
              // button(text: "÷"),
            ],
          ),
          Row(
            children: [
              button(text: "7"),
              button(text: "8"),
              button(text: "9"),
              button(text: "X", tcolor: orcol),
              // button(text: "÷"),
            ],
          ),
          Row(
            children: [
              button(text: "4"),
              button(text: "5"),
              button(text: "6"),
              button(text: "-", tcolor: orcol),
              // button(text: "÷"),
            ],
          ),
          Row(
            children: [
              button(text: "1"),
              button(text: "2"),
              button(text: "3"),
              button(text: "+", tcolor: orcol),
              // button(text: "÷"),
            ],
          ),
          Row(
            children: [
              button(text: "%"),
              button(text: "0"),
              button(text: "."),
              button(text: "=", tcolor: orcol),
              // button(text: "÷"),
            ],
          ),
        ],
      ),
    );
  }

  //button widget

  Widget button({text, tcolor = Colors.white, buttonBGcol = buttoncol}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.all(22),
              primary: buttonBGcol ?? buttoncol),
          onPressed: () => onbuttonClick(text),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 18, color: tcolor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
