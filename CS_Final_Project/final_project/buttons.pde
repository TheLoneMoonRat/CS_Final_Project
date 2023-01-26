void mouseClicked () {
  if (screenMode == 2) {
    if (mouseX > 600 & mouseX < 800) {
      if (mouseY > 500 & mouseY < 600) {
        encryptionField.setText(saved);
      }
    }
  }
}

void buttonPresent () {
  noStroke();
  if (mouseX > 600 & mouseX < 800) {
      if (mouseY > 500 & mouseY < 600) {
        fill(3,170,170);
        rect(580, 480, 240, 140);
        fill(0);
        rect(600, 500, 200, 100);
        fill(3,170,170);
      } else {
        fill(6,232,230);
        rect(580, 480, 240, 140);
        fill(0);
        rect(600, 500, 200, 100);
        fill(6,232,230);
      }
  } else {
    fill(6,232,230);
    rect(580, 480, 240, 140);
    fill(0);
    rect(600, 500, 200, 100);
    fill(6,232,230);
  }
  PFont font = createFont("Arial", 15);
  textFont(font);
  text("Decrypt encrypted text?", 620, 550);
}
