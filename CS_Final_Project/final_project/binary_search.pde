int alphaRank (String letter) {
  int iterator = 0;
  while (iterator < 26) {
    if (alphabet[iterator].equals(letter)) {
      break;
    } else {
      iterator++;
    }
  }
  return(iterator);
}

boolean binarySearch (String word, String[] wordList) {
  int wordsLeft = wordList.length;
  int avg = int(wordsLeft / 2);
  //println(wordsLeft);
  if (wordList[avg].equals(word)) {
    return(true);
  } else if (wordsLeft == 1){
    if (wordList[0].equals(word)) {
      return(true);
    } else {
      return(false);
    }
  } else if (alphaRank(str(wordList[avg].charAt(0))) > alphaRank(str(word.charAt(0)))) {
    //println(wordList[int(wordsLeft/2)]);
    //println(">word");
    return(binarySearch(word, subset(wordList, 0, int(wordsLeft / 2))));
  } else if (alphaRank(str(wordList[avg].charAt(0))) > alphaRank(str(word.charAt(0)))){ 
    //println(wordList[int(wordsLeft/2)]);
    //println("<word");
    return(binarySearch(word, subset(wordList, avg)));
  } else {
    int i = 0;
    while (str(wordList[avg].charAt(i)).equals(str(word.charAt(i)))) {
      //println(i);
      //println(wordList[int(wordsLeft /2)]);
      //println(wordList[int(wordsLeft /2)].charAt(i));
      if (wordList[avg].length() >= word.length() ) {
        if (word.length() >= i +2) {
          i++;
        } else {
          return(binarySearch(word, subset(wordList, 0, avg)));
        }
      } else {
        if (wordList[avg].length() >= i+2) {
          i++;
        } else { 
          return(binarySearch(word, subset(wordList, avg)));
        }
      }
    }
    if (alphaRank(str(wordList[avg].charAt(i))) > alphaRank(str(word.charAt(i)))) {
      //println(wordList[int(wordsLeft/2)]);
      //println(">");
      return(binarySearch(word, subset(wordList, 0, avg)));
    } else { 
      //println(wordList[int(wordsLeft/2)]);
      //println("<");
      return(binarySearch(word, subset(wordList, avg)));
    }
  }
}