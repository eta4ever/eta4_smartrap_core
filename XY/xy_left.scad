$fa=5; $fs=0.1;

profile=15.2;

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

//test tube
//translate([5+profile/2, 5+profile/2, 0]) color("Red", 0.5) cube([profile, profile, 100], center=true);

rotate([-90,0,0]){

difference(){
	translate([-100+1.35, -100, 0]) import("xy1.stl"); // исходная модель
	
	union(){
		translate([0, -21, 25]) cube([30, 42,0.9]); // чуть спилить верхушку
		translate([0, -21, -0.01]) cube([20, 42, 25.02]); // отрезах нафиг обхват
	}	
}


difference(){

	union(){	

		hull(){
			translate([10, 0, 5]) rotate([90, 0, 0]) cylinder(h=42, r=5, center=true); // нижний упор
			translate([20,-21,0]) cube([0.01, 42, 10]);
		}
	
		hull(){
			translate([10, 0, 20]) rotate([90, 0, 0]) cylinder(h=42, r=5, center=true); // верхний упор
			translate([20,-21,15]) cube([0.01, 42, 10]);
		}

		hull(){
			translate([18, 0, -15]) rotate([90, 0, 0]) cylinder(h=42, r=2, center=true); // упор двигателя
			translate([18, 0, 0]) cube([4, 42, 1], center=true);
		}
	}

	union(){
		translate([2.5+profile/2, 0, 5+profile/2]) cube([profile+5, 42, profile], center=true); // вырез под трубу

		translate([5+profile/2, -15, 12.5]) cylinder(h=25.01, r=1.7, center=true); // крепежные отверстия
		translate([5+profile/2, 15, 12.5]) cylinder(h=25.01, r=1.7, center=true);
	}
}
}