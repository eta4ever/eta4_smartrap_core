$fa=5; $fs=0.1;

module motor(){
	mwidth=42.3;
	mheight=48;
	difference(){
		union(){
			cube([mwidth, mwidth, mheight], center=true);
			translate([0, 0, mheight/2+1]) cylinder(h=2, r=11, center=true);
			translate([0, 0, mheight/2+12]) cylinder(h=24, r=2.5, center=true);
		}
		union(){
			translate([-15.5, -15.5, mheight/2 - 2.25]) cylinder(h=4.51, r=1.5, center=true);
			translate([-15.5, 15.5, mheight/2 - 2.25]) cylinder(h=4.51, r=1.5, center=true);
			translate([15.5, -15.5, mheight/2 - 2.25]) cylinder(h=4.51, r=1.5, center=true);
			translate([15.5, 15.5, mheight/2 - 2.25]) cylinder(h=4.51, r=1.5, center=true);
		}
	}//difference
}//module


// motor test
//translate([0, -24, -24]) motor();

// profile test
//translate([-100, 0, -48]) cube([200, 15.2, 15.2]);

difference(){
	
	union(){
		translate([-102, -112.5, 0]) import("Z_bottom_orig.stl"); // исходная модель
		translate([-37, -2.8, -48]) cube([74, 2.8, 48]); // стенка
		translate([-37, -2.8, -48]) cube([74, 2.8, 28]);
		translate([-37, 0, -33]) cube([74, 15, 5]);
		
		hull(){
			translate([0, 15, -33]) rotate([0, 90, 0]) cylinder(h=74, r=5, center=true); // обхват
			translate([0, 15, -43]) rotate([0, 90, 0]) cylinder(h=74, r=5, center=true);
		}

		translate([0, 7, -12]) rotate([25, 0, 0]) cube([74, 3, 40], center=true); // откос

		

	}
	
	union(){

		translate([-50, -5, -0.01]) cube(13 ,5, 7.02); // ухи отрезать
		translate([37, -5, -0.01]) cube(13.1, 5, 7.02);

		translate([-37, 0, -48]) cube([74, 15.2, 15.2]); // под профиль

		translate([-30, 10, -40]) rotate([90, 0, 0]) cylinder(h=35, r=1.7, center=true); // крепежные
		translate([30, 10, -40]) rotate([90, 0, 0]) cylinder(h=35, r=1.7, center=true);
		

	}//union
}//difference

