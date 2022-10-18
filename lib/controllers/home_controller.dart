import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  var f = NumberFormat.decimalPattern('en_us');
  var resultLabel = '0';
  var firstInput = '';
  var secondInput = '';
  var operation = '';

  captureNumberValue(int number) {
    if (operation.isEmpty) {
      firstInput += number.toString();
      firstInput = f
          .format(int.parse(firstInput.replaceAll(',', '').replaceAll('.', '')))
          .toString();
      update();
    } else {
      secondInput += number.toString();
      secondInput = f
          .format(
              int.parse(secondInput.replaceAll(',', '').replaceAll('.', '')))
          .toString();
      update();
    }
  }

  captureOperation(String operationValue) {
    operation = operationValue;
    update();
  }

  makeOperation() {
    var result = 0.0;
    if (operation == '+') {
      result =
          double.parse(firstInput.replaceAll(',', '').replaceAll('.', '')) +
              double.parse(secondInput.replaceAll(',', '').replaceAll('.', ''));
    } else if (operation == '-') {
      result =
          double.parse(firstInput.replaceAll(',', '').replaceAll('.', '')) -
              double.parse(secondInput.replaceAll(',', '').replaceAll('.', ''));
    } else if (operation == 'x') {
      result =
          double.parse(firstInput.replaceAll(',', '').replaceAll('.', '')) *
              double.parse(secondInput.replaceAll(',', '').replaceAll('.', ''));
    } else if (operation == '/') {
      result =
          double.parse(firstInput.replaceAll(',', '').replaceAll('.', '')) /
              double.parse(secondInput.replaceAll(',', '').replaceAll('.', ''));
    }

    resultLabel = f.format(result).toString();
    update();
  }

  clearAll() {
    resultLabel = '0';
    firstInput = '';
    secondInput = '';
    operation = '';
    update();
  }
}
