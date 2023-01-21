void setScene(String encryption) {
  if (encryption == "encrypt") {
    screenMode = 1;
  } else if (encryption == "home") {
    screenMode = 0;
  } else if (encryption == "decrypt") {
    screenMode = 2;
  }
  
}
