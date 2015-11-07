$fa=5; $fs=0.1;

difference(){
	hull(){
		cylinder(h=3, r=5, center=true);
		translate([15, 0, 0]) cylinder(h=3, r=5, center=true);
	}

	union(){
		cylinder(h=3.1, r=1.75, center=true);
		translate([15, 0, 0]) cylinder(h=3.1, r=1.75, center=true);
	}
}    