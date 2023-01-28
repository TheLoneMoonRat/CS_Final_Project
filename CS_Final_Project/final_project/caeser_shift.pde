//encrypts the user's message using the caeser shift
//shifts each letter of their message up or down a certain number of alphabet places
String caesarShift (String encryptItem, int shiftValue) {
  String finalProduct = "";
  
  //iterates through each number up until the desired shift value and stores the shifted message in the possible list
  for (int i = 0; i < shiftValue + 1; i++) {
    finalProduct = "";
    
    //iterates through each letter in the message variant, shifts it up or down the i shift value given by the for loop, and then adds it to the final message
    for (char letter : encryptItem.toCharArray()) {
      String translated = str(letter);
      
      //determines if the current character being shifted is not a letter, in which case it is ignored (unless it is a space)
      if (alphaRank(translated) == 26) {
        if (translated.equals(" ")) {
          finalProduct += translated;
        }
      } else {
        finalProduct += alphabet[(alphaRank(translated) + i) % 26];
      } 
    }
    
    //adds all possible shifted versions of the message to be animated later
    possible.add(finalProduct);
  }
  
  //upon the conclusion of the for loop which stops once the desired shift value has been reached, the final shifted message is saved in a variable and returned
  saved = finalProduct;
  return(finalProduct);
}
