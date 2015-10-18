$fa=5; $fs=0.1;

//for TR8x8 nut

//test bolt
//cylinder(h=150, r=4, center=true);

difference(){
	
	union(){
		translate([-100, -86, 0]) import("Z_carriage_orig.stl"); // исходная модель
		translate([0,0,7.5]) cylinder(h=15, r=8, center=true); // заткнуть отверстие под гайку
	}
	
	union(){
		
		 translate([0,0,7.5]) cylinder(h=15.01, r=4.5, center=true); // под ходовой винт		


		// крепеж гайки
		translate([5.675, 5.675, 7.5]) cylinder(r=1.75, h=15.01, center=true); // под винты
		translate([5.675, -5.675, 7.5]) cylinder(r=1.75, h=15.01, center=true);
		translate([-5.675, 5.675, 7.5]) cylinder(r=1.75, h=15.01, center=true);
		translate([-5.675, -5.675, 7.5]) cylinder(r=1.75, h=15.01, center=true); 

		translate([0,0,5]) cylinder(r=5.3, h=10.01, center=true); // под гайку
		translate([0,0,11.5]) cylinder(h=3, r1=5.3, r2=4.5, center=true);

	}//union
}//difference

