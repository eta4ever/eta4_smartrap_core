$fa=5; $fs=0.1;

include<e3dv6 simple.scad>;

difference(){
	union(){
		cube([35, 12, 55]); // head mounting plate
		
		translate([-12.5,-15,41]) cube([31,27,9]); //e3d mount
		translate([3,-15, 45.5]) cylinder(h=9, r=15.5, center=true);

		translate([16,-15, 9]) cube([31,27,9]); //endstop mount
		translate([31.5,-15, 13.5]) cylinder(h=9, r=15.5, center=true);
	}

	union(){
	
		//head mounting holes
		translate([6.5, 6, 22.5]) rotate([90,0,0]) cylinder(h=12.1, r=1.75, center=true);
		translate([6.5, 6, 32.5]) rotate([90,0,0]) cylinder(h=12.1, r=1.75, center=true);
		translate([28.5, 6, 22.5]) rotate([90,0,0]) cylinder(h=12.1, r=1.75, center=true);
		translate([28.5, 6, 32.5]) rotate([90,0,0]) cylinder(h=12.1, r=1.75, center=true);

		// endstop mounting hole
		translate([31.5,-15, 13.5]) cylinder(h=9.1, r=9.5, center=true);

	}
}

translate([3, -15, 50]) color([1,0,0]) e3dv6();