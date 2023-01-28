//calculates the percentage of recognized words in each shifted message variant
//calculated by dividing the number of recognized words by the total number of words
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

//decrypts message by returning the shifted version of an encrypted message with the highest percent correct
String decryption (String message) {
  float greatest = 0;
  String decrypted = "";
  
  //iterates through all 26 possible variations of the message and compares their percentage correct to see which one is most correct
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
    
    //replaces the currently most correct message with a more correct message if one is found
    if (percentCorrect(variant) > greatest) {
      decrypted = variant;
      greatest = percentCorrect(variant);
    }
  
  //adds all possible versions of the message to the possible array list to be animated later  
  possible.add(variant); 
  
  }
  
  //returns the variant of the message that has the most real words
  return(decrypted);
}
