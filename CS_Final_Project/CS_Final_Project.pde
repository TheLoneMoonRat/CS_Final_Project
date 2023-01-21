import g4p_controls.*;
int screenMode = 0;
String [] dictionary = null;
String [] alphabet = null;
PImage img;
PImage title;
String encrypted;
int shifted;
void setup () {
  size(1400, 700);
  frameRate(60);
  createGUI();
  img = loadImage("background.jpg");
  title = loadImage("Title.png");
  alphabet = loadStrings("alphabet.txt");
  dictionary = loadStrings("allWords.txt"); 
}



void draw () {
  background(img);
  if (screenMode == 0) {
    aboutButton.setVisible(true);
    encryptButton.setVisible(true);
    decryptButton.setVisible(true);
    encryptionField.setVisible(false);
    chooseShiftField.setVisible(false);
    randomShiftButton.setVisible(false);
    encryptNowButton.setVisible(false);
    image(title, 280, -50);  
  } else if (screenMode == 1) {
    aboutButton.setVisible(false);
    encryptButton.setVisible(false);
    decryptButton.setVisible(false);
    encryptionField.setVisible(true);
    chooseShiftField.setVisible(true);
    randomShiftButton.setVisible(true);
    encryptNowButton.setVisible(true);
  } else if (screenMode == 2) {
    aboutButton.setVisible(false);
    encryptButton.setVisible(false);
    decryptButton.setVisible(false);
    encryptionField.setVisible(true);
    encryptNowButton.setVisible(true);
  }
}

void mouseClicked () {
  if (110 < mouseX && mouseX < 300) {
    if (110 < mouseY && mouseY < 250) {
      setScene("home");
    }
  }
}
