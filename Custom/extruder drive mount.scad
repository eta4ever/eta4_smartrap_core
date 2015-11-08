$fa=5; $fs=0.1;

module motor(){
	mwidth=42.3;
	mheight=40;
	difference(){
		union(){
			cube([mwidth, mwidth, mheight], center=true);
			translate([0, 0, mheight/2+1]) cylinder(h=2, r=11, center=true);
			translate([0, 0, mheight/2+12]) cylinder(h=24, r=2.5, center=true);
		}
		union(){
//			translate([-15.5, -15.5, mheight/2 - 2.25]) cylinder(h=4.51, r=1.5, center=true);
//			translate([-15.5, 15.5, mheight/2 - 2.25]) cylinder(h=4.51, r=1.5, center=true);
//			translate([15.5, -15.5, mheight/2 - 2.25]) cylinder(h=4.51, r=1.5, center=true);
//			translate([15.5, 15.5, mheight/2 - 2.25]) cylinder(h=4.51, r=1.5, center=true);
		}
	}//difference
}//module

mw=42.3;
prof=15.2;

rotate([0,90,0])
difference(){
	
	union(){
		translate([12.5-prof/2, 0, mw/2-5]) cube ([25, mw+20, mw+10], center=true);
		translate([12.5-prof/2, mw/2+5, mw+prof/2]) cube([25, 10, prof+10], center=true);
		translate([12.5-prof/2, -mw/2-5, mw+prof/2]) cube([25, 10, prof+10], center=true);
 	}
	
	union(){
		translate([0, 0, mw/2]) rotate([0,90,0]) color([0.6, 0, 0]) motor();
		translate([0, 0, mw+prof/2]) color([0,0.6,0]) cube([prof, 200, prof], center=true);

		translate([0, mw/2+5, mw+prof/2]) rotate([0, 90, 0]) cylinder(h=50, r=1.75, center=true);
		translate([0, -mw/2-5, mw+prof/2]) rotate([0, 90, 0]) cylinder(h=50, r=1.75, center=true);

	}
}