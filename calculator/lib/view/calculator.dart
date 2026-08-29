import 'package:calculator/components/myButton.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

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
        padding: EdgeInsetsGeometry.all(2),
        child: Column(
          children: [
            Container(color: Colors.black, height: 250),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        myButton(
                          buttonText: 'C',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey,
                        ),
                        myButton(
                          buttonText: ',',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey,
                        ),
                        myButton(
                          buttonText: '<-',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey,
                        ),
                        myButton(
                          buttonText: '÷',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        myButton(
                          buttonText: '7',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                        ),
                        myButton(
                          buttonText: '8',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                        ),
                        myButton(
                          buttonText: '9',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                        ),
                        myButton(
                          buttonText: 'x',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        myButton(
                          buttonText: '4',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                        ),
                        myButton(
                          buttonText: '5',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                        ),
                        myButton(
                          buttonText: '6',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                        ),
                        myButton(
                          buttonText: '-',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        myButton(
                          buttonText: '1',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                        ),
                        myButton(
                          buttonText: '2',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                        ),
                        myButton(
                          buttonText: '3',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                        ),
                        myButton(
                          buttonText: '+',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        myButton(
                          buttonText: '0',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.grey[800],
                          flex: 3,
                        ),
                        myButton(
                          buttonText: '=',
                          buttonTextColor: Colors.white,
                          buttonBackgroundColor: Colors.orange,
                          flex: 2,
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
