String caesarShift (String encryptItem, int shiftValue) {
  String finalProduct = "";
  for (char letter : encryptItem.toCharArray()) {
    String translated = str(letter);
    if (translated.equals(" ")) {
      finalProduct += " ";
    } else {
      finalProduct += alphabet[(alphaRank(translated) + shiftValue) % 26];
    }
  }
  return(finalProduct);
}
