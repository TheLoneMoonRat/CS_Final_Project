/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void encryptClick(GButton source, GEvent event) { //_CODE_:encryptButton:465713:
  setScene("encrypt");
} //_CODE_:encryptButton:465713:

public void decryptClick(GButton source, GEvent event) { //_CODE_:decryptButton:937230:
  println("decryptButton - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:decryptButton:937230:

public void aboutClick(GButton source, GEvent event) { //_CODE_:aboutButton:421427:
  println("aboutButton - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:aboutButton:421427:

public void encryptThis(GTextField source, GEvent event) { //_CODE_:encryptionField:562507:
  println("encryptionField - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:encryptionField:562507:

public void encryptNow(GButton source, GEvent event) { //_CODE_:encryptNowButton:675232:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:encryptNowButton:675232:

public void randomShiftClick(GButton source, GEvent event) { //_CODE_:randomShiftButton:738227:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:randomShiftButton:738227:

public void chooseShift(GTextField source, GEvent event) { //_CODE_:chooseShiftField:656522:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:chooseShiftField:656522:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  encryptButton = new GButton(this, 200, 475, 400, 175);
  encryptButton.setIcon("Art for cs.png", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
  encryptButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  encryptButton.addEventHandler(this, "encryptClick");
  decryptButton = new GButton(this, 800, 475, 400, 175);
  decryptButton.setIcon("Art for cs (1).png", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
  decryptButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  decryptButton.addEventHandler(this, "decryptClick");
  aboutButton = new GButton(this, 500, 225, 400, 175);
  aboutButton.setIcon("Art for cs (2).png", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
  aboutButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  aboutButton.addEventHandler(this, "aboutClick");
  encryptionField = new GTextField(this, 300, 335, 800, 100, G4P.SCROLLBARS_NONE);
  encryptionField.setPromptText("What would you like to encrypt?");
  encryptionField.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  encryptionField.setOpaque(true);
  encryptionField.addEventHandler(this, "encryptThis");
  encryptNowButton = new GButton(this, 550, 120, 300, 125);
  encryptNowButton.setIcon("EncryptNow.png", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
  encryptNowButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  encryptNowButton.addEventHandler(this, "encryptNow");
  randomShiftButton = new GButton(this, 350, 500, 250, 150);
  randomShiftButton.setIcon("randomshift.png", 1, GAlign.EAST, GAlign.RIGHT, GAlign.MIDDLE);
  randomShiftButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  randomShiftButton.addEventHandler(this, "randomShiftClick");
  chooseShiftField = new GTextField(this, 800, 500, 250, 150, G4P.SCROLLBARS_NONE);
  chooseShiftField.setPromptText("Insert custom shift value");
  chooseShiftField.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  chooseShiftField.setOpaque(true);
  chooseShiftField.addEventHandler(this, "chooseShift");
}

// Variable declarations 
// autogenerated do not edit
GButton encryptButton; 
GButton decryptButton; 
GButton aboutButton; 
GTextField encryptionField; 
GButton encryptNowButton; 
GButton randomShiftButton; 
GTextField chooseShiftField; 