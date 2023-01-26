void mouseClicked () {
  clicked = true;
}

void buttonPresent () {
  fill(0);
  rect(500, 300, 200, 200);
  text("HI", 500, 300);
  if (clicked) {
    if (mouseX > 500 & mouseX < 700) {
      if (mouseY > 300 & mouseY < 500) {
        println("clicked");
      }
    }
  }
}
