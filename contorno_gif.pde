// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com
// Example 15-10: Brightness threshold

int s = second();
float X;
PImage source;      // Source image
PImage destination; // Destination image

void setup() {
  size(749, 626);
  source = loadImage("glitch.jpg");
  destination = createImage(source.width, source.height, RGB);
  smooth();
    X=1;
}

void draw() {
  
  X+=X/10;
  if (X>10000){
    X=1;
  }
  float threshold = X*10;
  println(threshold);

  // We are going to look at both image's pixels
  source.loadPixels();
  destination.loadPixels();

  for (int x = 0; x < source.width; x++ ) {
    for (int y = 0; y < source.height; y++ ) {
      int loc = x + y*source.width;
      // Test the brightness against the threshold
      if (brightness(source.pixels[loc]) > threshold/1000) {
        destination.pixels[loc] = color(255); // White
      } 
   
            if (brightness(source.pixels[loc]) > threshold/mouseX) {
        destination.pixels[loc] = color(0); // White
      } 
        if (brightness(source.pixels[loc]) > threshold/mouseX/5) {
        destination.pixels[loc] = color(255); // White
      } 
   
            if (brightness(source.pixels[loc]) > threshold/50) {
        destination.pixels[loc] = color(0); // White
      } 
              if (brightness(source.pixels[loc]) > threshold/20) {
        destination.pixels[loc] = color(255); // White
      } 
                  if (brightness(source.pixels[loc]) > threshold/10) {
        destination.pixels[loc] = color(0); // White
      } 
              if (brightness(source.pixels[loc]) > threshold/1.5) {
        destination.pixels[loc] = color(255); // White
      } 
   
            if (brightness(source.pixels[loc]) > threshold) {
        destination.pixels[loc] = color(0); // White
      } 
  
    }
  }

  // We changed the pixels in destination
  destination.updatePixels();
  // Display the destination
  image(destination, 0, 0);
  
  
  //int s = second();
  
  //saveFrame();
  
}

