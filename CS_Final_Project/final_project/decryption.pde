float percentCorrect (String decrypt) {
  float realWords = 0.0;
  float wordsPossible = split(decrypt, " ").length;
  for (String word : split(decrypt, " ")) {
    if (binarySearch(word, dictionary)) {
      realWords++;
    }
  }
  return(realWords / wordsPossible);
}

String decryption (String message) {
  float greatest = 0;
  String decrypted = "";
  for (int i = 0; i < 26; i++ ){
    String variant = "";
    for (char letter : message.toCharArray()) {
      String translated = str(letter);
      if (translated.equals(" ")) {
        variant += " ";
      } else {
        variant += alphabet[(alphaRank(translated) + i) % 26];
      }
    }
    if (percentCorrect(variant) > greatest) {
      decrypted = variant;
      greatest = percentCorrect(variant);
    }
    
  }
  return(decrypted);
}
