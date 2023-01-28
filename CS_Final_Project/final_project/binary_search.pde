//deteremines the alphabet rank of a letter
int alphaRank (String letter) {
  int iterator = 0;
  String word = letter.toLowerCase();
  while (iterator < 26) {
    if (alphabet[iterator].equals(word)) {
      break;
    } else {
      iterator++;
    }
  }
  return(iterator);
}

//binary search program searches an organized list for a word and returns true if the word is in the list
boolean binarySearch (String word, String[] wordList) {
  
  //finds the length of a list and the index of the word in the middle of the list
  int wordsLeft = wordList.length;
  int avg = int(wordsLeft / 2);
  
  //checks to see if the word in the middle of the list is the word and the recursion can end
  if (wordList[avg].equals(word)) {
    return(true);
    
  //checks to see if there is only one word left and the recursion can end
  } else if (wordsLeft == 1){
    
    //if the last word is the word, returns to indicate that the word is in the list
    if (wordList[0].equals(word)) {
      return(true);

    //if the last word is not the word, returns to indicate that the word is not in the list
    } else {
      return(false);
    }
    
  //checks to see if the bottom half or the top half of the list should be searched
  } else {
    
    //determines the index of letter being compared, beginning at the first letter
    int i = 0;
    
    //compares the letters in the middle word and the word being searched until there is a difference in letters
    while (str(wordList[avg].charAt(i)).equals(str(word.charAt(i)))) {
      
      //checks to make sure that comparing the letter indexes one higher than the current index being compared will not result in an error
      if (wordList[avg].length() >= word.length() ) {
        if (word.length() >= i +2) {
          i++;
        } else {
          
          //if there are no letters left to compare and the two words are identical up to this many index places, given that the word being searched for has fewer letters it is considered smaller
          //the binarySearch function is recursively called but now only searches the bottom half of the list
          return(binarySearch(word, subset(wordList, 0, avg)));
        }
      } else {
        if (wordList[avg].length() >= i+2) {
          i++;
        } else { 
          
          //in this case, like above, there are no letters left to compare and the two words are identical up to this point
          //given that the word being searched for has more letters, it is considered larger and the binarySearch function is recursively called to search the top half of the list
          return(binarySearch(word, subset(wordList, avg)));
        }
      }
    }
    
    //compares to see which word has the letter with the higher alphabetical ranking
    if (alphaRank(str(wordList[avg].charAt(i))) > alphaRank(str(word.charAt(i)))) {

      //the alphabetical rank of the word being searched for is smaller than the word at the middle of the list
      //the binarySearch function is recursively called to search the bottom half of the list
      return(binarySearch(word, subset(wordList, 0, avg)));
    } else { 
      
      //the binarySearch function is recursively called to search the top half of the list
      return(binarySearch(word, subset(wordList, avg)));
    }
  }
}
