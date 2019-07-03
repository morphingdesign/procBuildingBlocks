// Building block for tabbed frame with option for centered text

// Color scheme
color whiteAlpha100 = color(255, 100);
color whiteAlpha15 = color(255, 15);
color whiteSolid = color(255);
color blackSolid = color(0);

// Object
Frame tabFrame;

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void setup() {
   size(1000, 1000);
   // Parameters(xPos, yPos, Width, Height, Cut Size, Line Color, Line Weight, Fill Option, Fill Color)
   tabFrame = new Frame(300, 200, 100, 100, 10, whiteAlpha100, 1, true, whiteAlpha15);
}

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void draw() {
  background(blackSolid);
  pushMatrix();
      translate(0, 0);
      // *******************************************************
      // Tabbed frame object
      // No parameters
      tabFrame.drawFrame();
      // *******************************************************
      // Add centered text to frame object
      // Parameters: Text Color, Text Size, Text Value
      tabFrame.drawText(whiteAlpha100, 20, int(random(62, 65)));
      // *******************************************************  
  popMatrix();   
}
