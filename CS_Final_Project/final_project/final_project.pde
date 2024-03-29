import g4p_controls.*;

//variable and list initializations
int screenMode = 0;
float [] likelihoods = {};
String [] dictionary = null;
String [] alphabet = null;
ArrayList <String> possible = new ArrayList <String> ();
PImage img;
PImage imgTwo;
PImage title;
PImage infographic;
String encrypted;
String saved;
int shifted;
String solved;
int clock = 0;
boolean clicked;
int counter = 0;


void setup () {
  
  //screen, GUI, and variable setup
  size(1400, 700);
  frameRate(60);
  createGUI();
  img = loadImage("background.jpg");
  imgTwo = loadImage("background2.jpg");
  title = loadImage("Title.png");
  infographic = loadImage("Capture.png");
  alphabet = loadStrings("alphabet.txt");
  dictionary = loadStrings("allWords.txt"); 
  setScene("home");
}



void draw () {
  
  //draws background image and decides which images or elements to animate depending on screen mode set by scene_setup
  if (screenMode == 4) {
    background(imgTwo);
    image(infographic, 400, 210); 
  } else {
    background(img);
    if (screenMode == 0) {
      image(title, 280, -50);  
    } else if (screenMode ==2) {
      buttonPresent(); 
    }  else if (screenMode == 3) {
      
      //iterates through the possible encrypted/decrypted variants 
      clock++;
      
      //animates the text box showing the possible encrypted/decrypted variants before showing the final, actual encrypted/decrypted message
      fill(255);
      rect(400, 200, 600, 200);
      fill(0);
      PFont font = createFont("Arial", 20);
      textFont(font);
      try {
        
        //shows each variant of the message for 3 frames at a time
        text(possible.get(counter), 450, 250);
        if (clock % 3 == 0) {
          if (!encrypted.equals(possible.get(counter))) {
            counter++;
          }
        }
      } catch (Exception e) {
        
      }
    }
  } 
}
