import g4p_controls.*;
int screenMode = 0;
float [] likelihoods = {};
String [] dictionary = null;
String [] alphabet = null;
ArrayList <String> possible = new ArrayList <String> ();
PImage img;
PImage title;
String encrypted;
String saved;
int shifted;
String solved;
int clock = 0;
boolean clicked;
int counter = 0;
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
    homeButton.setVisible(false);
    image(title, 280, -50);  
  } else if (screenMode == 1) {
    aboutButton.setVisible(false);
    encryptButton.setVisible(false);
    decryptButton.setVisible(false);
    encryptNowButton.setIcon("EncryptNow.png", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
    encryptionField.setVisible(true);
    chooseShiftField.setVisible(true);
    randomShiftButton.setVisible(true);
    encryptNowButton.setVisible(true);
    homeButton.setVisible(true);
  } else if (screenMode == 2) {
    buttonPresent();
    aboutButton.setVisible(false);
    encryptButton.setVisible(false);
    decryptButton.setVisible(false);
    encryptNowButton.setIcon("DecryptNow.png", 1, GAlign.EAST, GAlign.MIDDLE, GAlign.MIDDLE);
    encryptionField.setVisible(true);
    encryptNowButton.setVisible(true);
    homeButton.setVisible(true);
  } else if (screenMode == 3) {
    clock++;
    aboutButton.setVisible(false);
    encryptButton.setVisible(false);
    decryptButton.setVisible(false);
    encryptionField.setVisible(false);
    encryptNowButton.setVisible(false);
    chooseShiftField.setVisible(false);
    randomShiftButton.setVisible(false);
    homeButton.setVisible(true);
    fill(255);
    rect(400, 200, 600, 200);
    fill(0);
    PFont font = createFont("Arial", 20);
    textFont(font);
    text(possible.get(counter), 450, 250);
    if (clock % 3 == 0) {
      if (!encrypted.equals(possible.get(counter))) {
        counter++;
      }
    }
  }
}
