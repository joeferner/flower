// This is a Collapsible Flower Designed By User Renosis, on Thingiverse. The License is Creative Commons - Attribution - Share and Share-Alike. 
// Just Uncomment a Line below if you want to display a certain thing!

//Display_All(); //Displays All Parts

//Display_Print_Tray(); // Displays Everything on one big tray for printing (fits on MakerBot Build Platform)

//Display_Stem_Array(); // Displays 9 stems for easy export and print
//Display_Green(); // Displays Items Recommended to Print in Green
//Display_Red(); //Displays the flower Pot Items (which I did in red)
Flower_Pot(); // Displays Just the Flower Pot
//Button(); // Displays Just the Button
//Flower(); // Displays Just the Flower
//Leaves_Segment(); // Displays the Two Leaf stem segment, I opted for this one
//Leaf_Segment(); // Displays the Single Leaf stem Segment, I tried two of these on the stem once, but for some weird reason, they would always migrate to the same side of the stem :[
//Segment(); // Displays A Stem Segment, in the one I printed, I printed 9 and I used 7

//rotate([ 90, 0, 0 ])
//translate([0,20,0])
//   {import("C:/Users/jferner/Downloads/flower.stl", convexity = 5);}

rotate([ 90, 180, 0 ])
translate([30,-35,0])
   {import("C:/Users/jferner/Downloads/pot_bottom.stl", convexity = 5);}
rotate([ 90, 180, 0 ])
translate([30,-35,0])
   {import("C:/Users/jferner/Downloads/pot.stl", convexity = 5);}

// ***** DON'T EDIT BELOW THIS LINE UNLESS YOU KNOW HOW TO WORK OPEN-SCAD, NOT THAT THERE IS ANYTHING COMPLEX BELOW :]  *****
// ***** In Fact, Maybe you should edit this stuff if you don't know OpenScad, because you really should learn it                                                 *****


module Flower_Pot() {
difference() {
	
	translate([0,0,10]) 
		cylinder (30,21,16);
		cylinder (30,1.5,1.5);
	 translate ([0,0,12])
		cylinder (40, 13, 13);
		
		}

difference() {

		cylinder (10, 23, 23);
	translate ([0,0,-1])
		cylinder (30, 1.5, 1.5);

		}

	}


module Button() {
	
		cylinder (4,12,12);
	difference(){
		cylinder (10, 7,7);
		translate ([-10,0,7]) rotate ([0,90,0])	cylinder (100, 1,1);
		}
		}


module Segment() {

difference() {
		cylinder (8, 3, 3);
	translate ([0,0,-1])
		cylinder (10, 1, 1);

	
	}

}

module Leaves_Segment() {
	difference() {
	translate ([0,15,0]) Leaves();
	translate ([0,0,-1]) cylinder(10,1, 1);
	}
	Segment();
	}

module Leaf_Segment() {
difference() {
translate ([0,15,0]) Leaf();
translate ([0,0,-1]) cylinder(10,1,1);
}
Segment();
	
}

module Leaves() {
	scale([0.5,1.5,2]) cylinder (2,10,10);
	translate ([6,-24,0]) rotate([0,0,215]) scale([0.5,1.5,2]) cylinder (2,10,10);
	}

module Leaf() {
	scale([0.5,1.5,2]) cylinder (2,10,10);
	}

module Flower_Parts() {
	difference() {
		translate([0, 0, 2]) sphere(10);
		translate([-10,-10,-20]) cube(20);
		}
	cylinder (2, 20,20);
	
	for (i=[0:9]) {
	
	rotate ([0, 0, i * 36]) translate ([0,11,0])  scale([1,2,1]) cylinder(2, 7.5, 7.5);
	
	}
	}

module Flower() {

	difference() {
	
	Flower_Parts();

	translate([0,0,-5]) cylinder (20, 1.5, 1.5);
  	translate([-12,0,-5]) rotate ([0,45,0]) cylinder (15,1.5,1.5);
	
		}

}

module Display_All() {
Flower_Pot();
translate([50,-50,0]) Button();
translate([50,50,0]) Segment();
translate([-50, -50,0]) Flower();
translate([-50,50,0]) Leaves_Segment();
translate([-25, 25,0])Leaf_Segment();
}

module Display_Stem_Array() {
for (i=[0:2]) {
	translate([i * 10, 0, 0]) Segment();
	translate([i * 10, 10, 0]) Segment();
	translate([i * 10, 20 , 0]) Segment();
	 }
}

module Display_Print_Tray() {
 Flower();
translate([30,-10,0]) Display_Stem_Array();
translate([35, -40,0]) Flower_Pot();
translate([-5,-40,0]) Button();
translate([-25,-50,0]) rotate([0,0,10]) Leaves_Segment();
}

module Display_Green() {
Display_Stem_Array();
translate ([30,10, 0]) Leaves_Segment();
}

module Display_Red() {
Flower_Pot();
translate([30, 30, 0]) Button();
}
//translate([50,-50,0])
//translate ([100,100,0])
//Leaves_Segment();
//Leaf_Segment();
//Flower_Pot();
//translate ([30,30, 0]) Button();
//Segment();