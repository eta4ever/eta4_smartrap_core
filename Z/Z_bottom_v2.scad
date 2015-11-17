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

difference(){ //отрезаем основную деталь, чтобы только боковухо под 110 осталось
union(){

difference(){
	
	union(){
		translate([-102, -112.5, 0]) import("Z_bottom_orig.stl"); // исходная модель
		translate([-62.5, -2.8, -48]) cube([125, 2.8, 56]); // стенка
		translate([-62.5, -2.8, -48]) cube([125, 2.8, 28]);
		translate([-62.5, 0, -33]) cube([125, 15, 5]);
		
		hull(){
			translate([0, 15, -33]) rotate([0, 90, 0]) cylinder(h=125, r=5, center=true); // обхват
			translate([0, 15, -43]) rotate([0, 90, 0]) cylinder(h=125, r=5, center=true);
		}

		translate([0, 7, -12]) rotate([25, 0, 0]) cube([125, 3, 40], center=true); // откос

		

	}
	
	union(){

		//translate([-50, -5, -0.01]) cube(13 ,5, 7.02); // ухи отрезать
		//translate([37, -5, -0.01]) cube(13.1, 5, 7.02);

		translate([-62.5, 0, -48]) cube([125, 15.2, 15.2]); // под профиль

		translate([-48, 10, -40]) rotate([90, 0, 0]) cylinder(h=35, r=1.7, center=true); // крепежные
		translate([30, 10, -40]) rotate([90, 0, 0]) cylinder(h=35, r=1.7, center=true);
		

	}//union
}//difference

//r4.2

difference(){
	union(){
		hull(){ // уховерхнее
			translate([-55, -14, 4]) cylinder(r=12, h=8, center=true);
			translate([-37, -14, 4]) cube([1, 24, 8], center=true);
		}

		translate([-62.5, -5, 0]) cube([5,5,8]);

		hull(){ // ухонижнее
			translate([-55, -14, -30]) cylinder(r=12, h=8, center=true);
			translate([-37, -14, -30]) cube([1, 24, 8], center=true);
		}

		translate([-62.5, -5, -34]) cube([5,5,8]);

		//трубка
		translate([-55, -14, -13]) cylinder(h=27, r=6, center=true);

		//упор трубки
		translate([-50, -16, -29]) cube([13.5, 4, 30]);
	}
	union(){
		translate([-55, -14, -13]) cylinder(r=4.1, h=50, center=true); // отверстие под вал
		translate([-68, -16, -35]) cube([13.5, 2, 50]); // разрез
	}
}
}
	translate([-37,-50, -50]) cube([100, 100, 60]);
}