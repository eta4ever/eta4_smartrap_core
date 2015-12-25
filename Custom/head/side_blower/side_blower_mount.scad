$fa=10; $fs=0.5;

uhoW=15;
bloW=35;

difference(){
	union(){
		hull(){ //планка под улитку
			translate([-bloW/2, 0, 0]) cylinder(h=3, r=6, center=true);
			translate([bloW/2, 0, 0]) cylinder(h=3, r=6, center=true);
		}

		hull(){ //под ухо
			translate([-uhoW/2-1.5, 15, 5-1.5]) rotate([0,90,0]) cylinder(h=3, r=5, center=true);
			translate([-uhoW/2-1.5, 3, 2-1.5]) rotate([0,90,0]) cylinder(h=3, r=2, center=true);
		}

		hull(){ //под ухо
			translate([uhoW/2+1.5, 15, 5-1.5]) rotate([0,90,0]) cylinder(h=3, r=5, center=true);
			translate([uhoW/2+1.5, 3, 2-1.5]) rotate([0,90,0]) cylinder(h=3, r=2, center=true);
		}
	}

	union(){
		// под винты крепления улитки
		translate([-bloW/2, 0, 0]) cylinder(h=3, r=1.75, center=true);
		translate([bloW/2, 0, 0]) cylinder(h=3, r=1.75, center=true);

		//под винт вухо
		translate([0, 15, 5-1.5]) rotate([0,90,0]) cylinder(h=uhoW+6, r=1.75, center=true);
	}
}