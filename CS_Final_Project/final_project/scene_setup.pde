void setScene(String encryption) {
  if (encryption == "encrypt") {
    possible = null;
    screenMode = 1;
    encryptionField.setText("What would you like to encrypt?");
  } else if (encryption == "home") {
    screenMode = 0;
  } else if (encryption == "decrypt") {
    possible = null;
    screenMode = 2;
    //comment this for stable build
    encryptionField.setText("What would you like to decrypt?");
  } else if (encryption == "show") {
    screenMode = 3;
    counter = 0;
  }
}