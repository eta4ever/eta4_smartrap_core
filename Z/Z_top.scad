$fa=5; $fs=0.1;

// profile test
//translate([-100, 0, 7]) cube([200, 15.2, 15.2]);

// bolt test
//translate([0, -23, 6]) cylinder(h=200, r=4, center=true);

difference(){
	
	union(){
		translate([-98, -156.5, 0]) import("Z_top_orig.stl"); // исходная модель
		translate([-37, -4, 12]) cube([74, 4, 15.2]);
		translate([-37, 0, 22.2]) cube([74, 15, 5]);
		
		translate([-12, -24, 5]) cube([24, 12, 7]); // убрать родной паз
		translate([0, -23, 6]) cylinder(h=12, r=6, center=true);

		hull(){
			translate([0, 15, 22.2]) rotate([0, 90, 0]) cylinder(h=74, r=5, center=true); // обхват
			translate([0, 15, 12]) rotate([0, 90, 0]) cylinder(h=74, r=5, center=true);
		}


	}
	
	union(){

		translate([-51, -5, -0.01]) cube(14 ,5, 7.02); // ухи отрезать
		translate([37, -5, -0.01]) cube(13.1, 5, 7.02);

		translate([-37, 0, 7]) cube([74, 15.2, 15.2]); // под профиль

		translate([-20, 10, 17]) rotate([90, 0, 0]) cylinder(h=35, r=1.7, center=true); // крепежные
		translate([20, 10, 17]) rotate([90, 0, 0]) cylinder(h=35, r=1.7, center=true);

		translate([0, -23, 6]) cylinder(h=12.01, r=4.5, center=true); // под шпильку
		

	}//union
}//difference

