$fa=10; $fs=0.5;

uhoW=10;
bloW=35;

difference(){
	union(){
		hull(){ //планка под улитку
			translate([-bloW/2, 0, 0]) cylinder(h=3, r=6, center=true);
			translate([bloW/2, 0, 0]) cylinder(h=3, r=6, center=true);
            
		}

		//под ухо
        hull(){ 
			translate([-uhoW/2-2, 13, 5-1.5+7]) rotate([0,90,0]) cylinder(h=4, r=5, center=true);
			translate([-uhoW/2-2, 13, 0]) cube ([4, 10, 3], center=true); 
		}
        translate([-uhoW/2-2, 8, 0]) cube([4,5,3], center=true);
        translate([-uhoW/2-2, 5, 1.5]) rotate([20,0,0]) cube([4,9,3], center=true);
        
		//под ухо
        hull(){ 
			translate([uhoW/2+2, 13, 5-1.5+7]) rotate([0,90,0]) cylinder(h=4, r=5, center=true);
			translate([uhoW/2+2, 13, 0]) cube ([4, 10, 3], center=true); 
		}
        translate([uhoW/2+2, 8, 0]) cube([4,5,3], center=true);
        translate([uhoW/2+2, 5, 1.5]) rotate([20,0,0]) cube([4,9,3], center=true);
	}

	union(){
		// под винты крепления улитки
		translate([-bloW/2, 0, 0]) cylinder(h=3, r=1.85, center=true);
		translate([bloW/2, 0, 0]) cylinder(h=3, r=1.85, center=true);

		//под винт вухо
		translate([0, 13, 5-1.5+7]) rotate([0,90,0]) cylinder(h=uhoW+8, r=1.85, center=true);
        
	}
}