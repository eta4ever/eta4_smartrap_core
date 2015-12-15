$fa=10; $fs=0.5;

prof=15.4;

difference(){
	
	union(){
		cube([30, 20, 18]);
		translate([15, 2, 18]) rotate([0,90,0]) cylinder(r=2, h=30, center=true);
		translate([15, 18, 18]) rotate([0,90,0]) cylinder(r=2, h=30, center=true);
	}

	union(){
		translate([15, (20-prof)/2 + prof/2, 5+prof/2]) cube([30+0.02, prof+0.02, prof+0.02], center=true); //	вырез под профиль

		// под крепление к корпусу
		translate([5, 10, 2.5]) { cylinder(r=1.75, h=5.05, center=true); translate([0,0, 2.5-0.9]) cylinder(r1=1.5, r2=3, h=1.8, center=true); }
		translate([25, 10, 2.5]) { cylinder(r=1.75, h=5.05, center=true); translate([0,0, 2.5-0.9]) cylinder(r1=1.5, r2=3, h=1.8, center=true); }

		// под крепление к профилю
		translate([15, 10, 12.5]) rotate([90,0,0]) cylinder(r=1.75, h=20.05, center=true);
	
	}

}