run("Set Measurements...", "center redirect=None decimal=5");
getPixelSize(unit, pixelw, pixelh) 						//saves the pixel sizes in variables

name = getTitle()

run("Z Project...", "projection=[Max Intensity]"); 		// z-projection
run("Threshold...");                           			// to open the threshold window if not opened yet
waitForUser("set the threshold and press OK, or cancel to exit macro"); 
setOption("BlackBackground", false);
run("Convert to Mask");
run("Analyze Particles...", "size=10-1000 pixel display in_situ");

selectWindow(name);
run("Reslice [/]...", "output=1.000 start=Top avoid");
run("Z Project...", "projection=[Max Intensity]");		// y-projection
run("Threshold...");                           
waitForUser("set the threshold and press OK, or cancel to exit macro"); 
run("Convert to Mask");
run("Analyze Particles...", "size=10-100000 pixel display in_situ");


ax = getResult("XM", 0)
ay = getResult("YM", 0)
if (abs(ax-(getResult("XM",2))) < abs(ax-(getResult("XM",3)))) {
      az = getResult("YM", 2);
   } else {
      az = getResult("YM", 3);
   } 

bx = getResult("XM", 1);
by = getResult("YM", 1);
if (abs(bx-(getResult("XM",2))) < abs(bx-(getResult("XM",3)))) {
      bz = getResult("YM", 2);
   } else {
      bz = getResult("YM", 3);
   } 


centrosomeDistance = sqrt(pow(bx-ax,2)+pow(by-ay,2)+pow(bz-az,2));
baseDistance = sqrt(pow(bx-ax,2)+pow(by-ay,2));
alpha = acos(baseDistance/centrosomeDistance)*(180/PI);


print ("The length between the centrosomes is:");
print (centrosomeDistance);
print ("The angle alpha is:");
print (alpha);
