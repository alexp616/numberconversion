import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  String selection = '', number = '';
  print('Select which conversion you would like to do:');
  print('1. Decimal to Binary');
  print('2. Binary To Decimal');
  print('3. Decimal to Hexadecimal');
  print('4. Hexadecimal to Decimal');
  print('5. Binary to Hexadecimal');
  print('6. Hexadecimal to Binary');
  print('');
  String? a = stdin.readLineSync();
  if (a != null) {
    selection = a;
  }
  if (int.parse(selection) > 6) {
    eject();
  }
  print('');
  print('Input the number you would like to convert:');
  print('');
  String? b = stdin.readLineSync();
  if (b != null) {
    number = b;
  }
  print('');
  stdout.write('Your converted number is: ');

  switch (selection) {
    case '1':
      print(decimalToBinary(number));
      break;
    case '2':
      print(binaryToDecimal(number));
      break;
    case '3':
      print(decimalToHex(number));
      break;
    case '4':
      print(hexToDecimal(number));
      break;
    case '5':
      print(binaryToHex(number));
      break;
    case '6':
      print(hexToBinary(number));
      break;
  }
}

String hex = '0123456789abcdef';

String decimalToBinary(String vent) {
  int sus = int.parse(vent);
  String sussy = '';

  while (sus > 0) {
    sussy = '${(sus % 2)}$sussy';
    sus = (sus / 2).floor();
  }
  return sussy;
}

String decimalToHex(String vent) {
  int sus = int.parse(vent);
  String sussy = '';

  while (sus > 0) {
    sussy = '${hex[(sus % 16)]}$sussy';
    sus = (sus / 16).floor();
  }
  return sussy;
}

String binaryToDecimal(String impostor) {
  num sus = 0;
  for (int eject = 0; eject < impostor.length; eject++) {
    sus += (int.parse(impostor[impostor.length - eject - 1])) * pow(2, eject);
  }
  return sus.toString();
}

String hexToDecimal(String pink) {
  num red = 0;
  for (int orange = 0; orange < pink.length; orange++) {
    red += (hex.indexOf(pink[pink.length - orange - 1])) * pow(16, orange);
  }
  return red.toString();
}

String binaryToHex(String emergencyMeeting) {
  return decimalToHex(binaryToDecimal(emergencyMeeting));
}

String hexToBinary(String crewmate) {
  return decimalToBinary(hexToDecimal(crewmate));
}

void eject() {
  print('     o  +        o     * *        ');
  print(',           .    ,               *');
  print('     * ,              *  *        ');
  print('o            o         +  *       ');
  print('                     o        *   ');
  print('                   ,              ');
  print('                ,                 ');
  print('   ..  You have been ejected. o   ');
  print('      +                ..+       o');
  print('            o      *           ., ');
  print('    **                   *,       ');
  print('                 + o        .,    ');
  exit(0);
}
