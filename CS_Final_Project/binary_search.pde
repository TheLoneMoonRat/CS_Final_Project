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
  //println(wordsLeft);
  if (wordList[int(wordsLeft /2)].equals(word)) {
    return(true);
  } else if (wordsLeft == 1){
    if (wordList[0].equals(word)) {
      return(true);
    } else {
      return(false);
    }
  } else if (alphaRank(str(wordList[int(wordsLeft /2)].charAt(0))) > alphaRank(str(word.charAt(0)))) {
    //println(wordList[int(wordsLeft/2)]);
    //println(">word");
    return(binarySearch(word, subset(wordList, 0, int(wordsLeft / 2))));
  } else if (alphaRank(str(wordList[int(wordsLeft /2)].charAt(0))) > alphaRank(str(word.charAt(0)))){ 
    //println(wordList[int(wordsLeft/2)]);
    //println("<word");
    return(binarySearch(word, subset(wordList, int(wordsLeft / 2))));
  } else {
    int i = 0;
    while (str(wordList[int(wordsLeft /2)].charAt(i)).equals(str(word.charAt(i)))) {
      //println(i);
      //println(wordList[int(wordsLeft /2)]);
      //println(wordList[int(wordsLeft /2)].charAt(i));
      if (wordList[int(wordsLeft / 2)].length() >= word.length() ) {
        if (word.length() >= i +2) {
          i++;
        } else {
          return(binarySearch(word, subset(wordList, 0, int(wordsLeft / 2))));
        }
      } else {
        if (wordList[int(wordsLeft / 2)].length() >= i+2) {
          i++;
        } else { 
          return(binarySearch(word, subset(wordList, int(wordsLeft / 2))));
        }
      }
    }
    if (alphaRank(str(wordList[int(wordsLeft /2)].charAt(i))) > alphaRank(str(word.charAt(i)))) {
      //println(wordList[int(wordsLeft/2)]);
      //println(">");
      return(binarySearch(word, subset(wordList, 0, int(wordsLeft / 2))));
    } else { 
      //println(wordList[int(wordsLeft/2)]);
      //println("<");
      return(binarySearch(word, subset(wordList, int(wordsLeft / 2))));
    }
  }
}
