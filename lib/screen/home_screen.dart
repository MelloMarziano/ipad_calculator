import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ipad_calculator/controllers/home_controller.dart';
import 'package:ipad_calculator/theme/colors.dart';
import 'package:ipad_calculator/widgets/customButton.dart';

import '../widgets/customButtonDoble.dart';

class HomeeScreen extends StatelessWidget {
  const HomeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) => Scaffold(
        backgroundColor: backroundColor,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  color: ledPanel,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${_.firstInput} ${_.operation} ${_.secondInput}',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    Text(
                      _.resultLabel,
                      style: const TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                padding: const EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * 0.60,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  color: backroundColor.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.black.withOpacity(0.4),
                      spreadRadius: 1,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomButtom(
                          text: '(',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: ')',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'mc',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'm+',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'm-',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'mr',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'C',
                          color: borderColor,
                          function: () {
                            _.clearAll();
                          },
                        ),
                        CustomButtom(
                          text: '+/-',
                          color: borderColor,
                          function: () {},
                        ),
                        CustomButtom(
                          text: '%',
                          color: borderColor,
                          function: () {},
                        ),
                        CustomButtom(
                          text: '÷',
                          color: optionButton,
                          function: () {
                            _.captureOperation('/');
                          },
                        ),
                      ],
                    ),
                    //Second row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomButtom(
                          text: '2nd',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'x²',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'x³',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'xy',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'e×',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: '10×',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: '7',
                          color: numberButton,
                          function: () {
                            _.captureNumberValue(7);
                          },
                        ),
                        CustomButtom(
                          text: '8',
                          color: numberButton,
                          function: () {
                            _.captureNumberValue(8);
                          },
                        ),
                        CustomButtom(
                          text: '9',
                          color: numberButton,
                          function: () {
                            _.captureNumberValue(9);
                          },
                        ),
                        CustomButtom(
                          text: 'X',
                          color: optionButton,
                          function: () {
                            _.captureOperation('x');
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomButtom(
                          text: '¹/x',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: '²√x',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: '³√x',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'y√x',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'In',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'log10',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: '4',
                          color: numberButton,
                          function: () {
                            _.captureNumberValue(4);
                          },
                        ),
                        CustomButtom(
                          text: '5',
                          color: numberButton,
                          function: () {
                            _.captureNumberValue(5);
                          },
                        ),
                        CustomButtom(
                          text: '6',
                          color: numberButton,
                          function: () {
                            _.captureNumberValue(6);
                          },
                        ),
                        CustomButtom(
                          text: '-',
                          color: optionButton,
                          function: () {
                            _.captureOperation('-');
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomButtom(
                          text: 'x!',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'sin',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'cos',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'tan',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'e',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'EE',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: '1',
                          color: numberButton,
                          function: () {
                            _.captureNumberValue(1);
                          },
                        ),
                        CustomButtom(
                          text: '2',
                          color: numberButton,
                          function: () {
                            _.captureNumberValue(2);
                          },
                        ),
                        CustomButtom(
                          text: '3',
                          color: numberButton,
                          function: () {
                            _.captureNumberValue(3);
                          },
                        ),
                        CustomButtom(
                          text: '+',
                          color: optionButton,
                          function: () {
                            _.captureOperation('+');
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomButtom(
                          text: 'Rad',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'sinh',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'cosh',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'tanh',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'π',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: 'Rand',
                          color: especialButton,
                          function: () {},
                        ),
                        CustomButtomDoble(
                          text: '0',
                          color: numberButton,
                          function: () {
                            _.captureNumberValue(0);
                          },
                        ),
                        CustomButtom(
                          text: '.',
                          color: numberButton,
                          function: () {},
                        ),
                        CustomButtom(
                          text: '=',
                          color: optionButton,
                          function: () {
                            _.makeOperation();
                          },
                        ),
                      ],
                    ),
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
