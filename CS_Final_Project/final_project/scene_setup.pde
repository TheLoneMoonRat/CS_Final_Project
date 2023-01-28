//determines which GUI elements should be displayed depending on which screen the program is on
void setScene(String encryption) {
  if (encryption == "encrypt") {
    possible.clear();
    screenMode = 1;
    aboutButton.setVisible(false);
    encryptButton.setVisible(false);
    decryptButton.setVisible(false);
    encryptNowButton.setIcon("EncryptNow.png", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
    encryptionField.setVisible(true);
    chooseShiftField.setVisible(true);
    randomShiftButton.setVisible(true);
    encryptNowButton.setVisible(true);
    homeButton.setVisible(true);
    encryptionField.setText("What would you like to encrypt?");
  } else if (encryption == "home") {
    screenMode = 0;
    aboutButton.setVisible(true);
    encryptButton.setVisible(true);
    decryptButton.setVisible(true);
    encryptionField.setVisible(false);
    chooseShiftField.setVisible(false);
    randomShiftButton.setVisible(false);
    encryptNowButton.setVisible(false);
    homeButton.setVisible(false);
  } else if (encryption == "decrypt") {
    possible.clear();
    screenMode = 2;
    buttonPresent();
    aboutButton.setVisible(false);
    encryptButton.setVisible(false);
    decryptButton.setVisible(false);
    encryptNowButton.setIcon("DecryptNow.png", 1, GAlign.EAST, GAlign.MIDDLE, GAlign.MIDDLE);
    encryptionField.setVisible(true);
    encryptNowButton.setVisible(true);
    homeButton.setVisible(true);
    encryptionField.setText("What would you like to decrypt?");
  } else if (encryption == "show") {
    aboutButton.setVisible(false);
    encryptButton.setVisible(false);
    decryptButton.setVisible(false);
    encryptionField.setVisible(false);
    encryptNowButton.setVisible(false);
    chooseShiftField.setVisible(false);
    randomShiftButton.setVisible(false);
    homeButton.setVisible(true);
    screenMode = 3;
    counter = 0;
  } else if (encryption.equals("about")) {
    screenMode = 4;
    aboutButton.setVisible(false);
    encryptButton.setVisible(false);
    decryptButton.setVisible(false);
    encryptionField.setVisible(false);
    chooseShiftField.setVisible(false);
    randomShiftButton.setVisible(false);
    encryptNowButton.setVisible(false);
    homeButton.setVisible(true); 
  }
}
