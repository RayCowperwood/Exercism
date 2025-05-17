class ArmstrongNumbers {
  bool isArmstrongNumber(String number) {
    int power = number.length;
    List<int> digits = number.split('').map(int.parse).toList();
    BigInt sum = BigInt.zero;
    for (var digit in digits) {
      sum += BigInt.from(digit).pow(power);
    }
    return sum == BigInt.parse(number);
  }
}
