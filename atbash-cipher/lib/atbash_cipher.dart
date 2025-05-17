class AtbashCipher {
  static const String decodeKey = 'abcdefghijklmnopqrstuvwxyz0123456789';
  static const String encodeKey = 'zyxwvutsrqponmlkjihgfedcba0123456789';

  String encode(String text) {
    String result = '';
    int groupCounter = 0;
    for (var char in text.toLowerCase().split('')) {
      if (decodeKey.indexOf(char) != -1) {
        result += encodeKey[decodeKey.indexOf(char)];
        groupCounter++;
      }
      if (groupCounter == 5) {
        result += ' ';
        groupCounter = 0;
      }
    }
    return result.trim();
  }

  String decode(String word) {
    return encode(word).replaceAll(" ", '');
  }
}
