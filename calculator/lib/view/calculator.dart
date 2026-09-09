import 'package:calculator/components/myButton.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String input = '0';
  double? firstOperand;
  double? secondOperand;
  String? operator;
  bool shouldClear = false;

  void _onDigitPressed(String digit) {
    setState(() {
      if (input == '0' || shouldClear) {
        input = digit;
        shouldClear = false;
      } else {
        input = input + digit;
      }
    });
  }

  void _comma() {
    setState(() {
      if (!input.contains(',')) {
        input = input + ',';
      }
    });
  }

  void _onClear() {
    setState(() {
      input = '0';
      shouldClear = false;
      firstOperand = null;
      operator = null;
    });
  }

  void _onBackspace() {
    setState(() {
      if (input.length > 1) {
        input = input.substring(0, input.length - 1);
      } else {
        input = '0';
      }
    });
  }

  void _operatorPressed(String? op) {
    setState(() {
      shouldClear = true;
      firstOperand = double.tryParse(input.replaceAll(',', '.'));
      operator = op;
    });
  }

  void _operations() {
    if (firstOperand == null || operator == null) return;

    secondOperand = double.tryParse(input.replaceAll(',', '.')) ?? 0;
    double result = 0.00;

    switch (operator) {
      case '+':
        result = firstOperand! + secondOperand!;
        break;
      case '-':
        result = firstOperand! - secondOperand!;
        break;
      case 'x':
        result = firstOperand! * secondOperand!;
        break;
      case '÷':
        if (secondOperand == 0) {
          setState(() {
            input = 'Error';
            shouldClear = true;
            firstOperand = null;
            operator = null;
          });
          return;
        } else {
          result = firstOperand! / secondOperand!;
          break;
        }
      default:
        return;
    }

    setState(() {
      if (result % 1 == 0) {
        input = result.toInt().toString();
      } else {
        input = result.toString().replaceAll('.', ',');
      }
        shouldClear = true;
        firstOperand = null;
        operator = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          'Calculator',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(3),
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 250,
              child: Center(
                child: Text(
                  input,
                  style: TextStyle(color: Colors.white, fontSize: 75),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        MyButton(
                          buttonText: 'C',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey,
                          onPressed: _onClear,
                        ),
                        MyButton(
                          buttonText: ',',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey,
                          onPressed: () => _comma(),
                        ),
                        MyButton(
                          buttonText: '<-',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey,
                          onPressed: _onBackspace,
                        ),
                        MyButton(
                          buttonText: '÷',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.orange,
                          onPressed: () => _operatorPressed('÷'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        MyButton(
                          buttonText: '7',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                          onPressed: () => _onDigitPressed('7'),
                        ),
                        MyButton(
                          buttonText: '8',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                          onPressed: () => _onDigitPressed('8'),
                        ),
                        MyButton(
                          buttonText: '9',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                          onPressed: () => _onDigitPressed('9'),
                        ),
                        MyButton(
                          buttonText: 'x',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.orange,
                          onPressed: () => _operatorPressed('x'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        MyButton(
                          buttonText: '4',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                          onPressed: () => _onDigitPressed('4'),
                        ),
                        MyButton(
                          buttonText: '5',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                          onPressed: () => _onDigitPressed('5'),
                        ),
                        MyButton(
                          buttonText: '6',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                          onPressed: () => _onDigitPressed('6'),
                        ),
                        MyButton(
                          buttonText: '-',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.orange,
                          onPressed: () => _operatorPressed('-'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        MyButton(
                          buttonText: '1',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                          onPressed: () => _onDigitPressed('1'),
                        ),
                        MyButton(
                          buttonText: '2',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                          onPressed: () => _onDigitPressed('2'),
                        ),
                        MyButton(
                          buttonText: '3',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                          onPressed: () => _onDigitPressed('3'),
                        ),
                        MyButton(
                          buttonText: '+',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.orange,
                          onPressed: () => _operatorPressed('+'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        MyButton(
                          buttonText: '0',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                          flex: 3,
                          onPressed: () => _onDigitPressed('0'),
                        ),
                        MyButton(
                          buttonText: '=',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.orange,
                          flex: 2,
                          onPressed: () => _operations(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
