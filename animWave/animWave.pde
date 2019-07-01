
// Color scheme
color blackSolid = color(0);
color redSolid = color(255, 0, 0);
color greenSolid = color(0, 255, 0);
color whiteAlpha100 = color(255, 100);
color whiteAlpha50 = color(255, 50);
color whiteAlpha15 = color(255, 15);
color whiteAlpha5 = color(255, 5);
color whiteSolid = color(255);

int frameWidth = 900;      // Width of wave curve

Wave waveOne, waveTwo, waveThree;                    // Wave option objects

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void setup() {
   size(1000, 1000);
   frameRate(10);
   // *******************************************************
   // Wave option objects
   // Parameters(xPos, yPos, Line Color, Line Alpha, Alpha Delta, Option)
   waveOne = new Wave(50, height/4, whiteSolid, 150, 50, 1);
   waveTwo = new Wave(50, height/2, whiteSolid, 200, 150, 2);
   waveThree = new Wave(50, height - height/4, whiteSolid, 200, 150, 3);
   // *******************************************************
}

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

void draw() {
  background(blackSolid);
  pushMatrix();
      // *******************************************************
      // Wave option objects
      // No parameters
          waveOne.drawWave();
          waveTwo.drawWave();
          waveThree.drawWave();
      // *******************************************************    
  popMatrix(); 
}
