String caesarShift (String encryptItem, int shiftValue) {
  String finalProduct = "";
  for (int i = 0; i < shiftValue + 1; i++) {
    finalProduct = "";
    for (char letter : encryptItem.toCharArray()) {
      String translated = str(letter);
      println(translated);
      if (alphaRank(translated) == 26) {
        if (translated.equals(" ")) {
          finalProduct += translated;
        }
      } else {
        //println(finalProduct);
        finalProduct += alphabet[(alphaRank(translated) + i) % 26];
      } 
    }
    possible.add(finalProduct);
  }
  saved = finalProduct;
  return(finalProduct);
}
