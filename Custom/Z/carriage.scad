$fa=5; $fs=0.1;

difference(){
	
	union(){
		
		translate([-50, 0, 25]) cylinder(h=50, r=12, center=true); //под lm8luu
		translate([50, 0, 25]) cylinder(h=50, r=12, center=true);

		translate([0, 0, 25]) cube([100, 10, 50], center=true); // перемычка

		hull(){
			translate([0, -15, 25]) cylinder(h=50, r=10, center=true); // под tr8x8
			translate([0, 0, 25]) cube([30, 1, 50], center=true);
		}

		translate([-40, -75, 25]) cube([20, 150, 50], center=true); // лапа
		translate([40, -75, 25]) cube([20, 150, 50], center=true); // лапа

		translate([0, -75, 5]) cube([80, 150,10], center=true); // междулапие 
		

	}

	union(){

		translate([0, -15, 25]) cylinder(h=50.1, r=4.5, center=true); // под ходовинт

		translate([-50, 0, 25]) cylinder(h=50.1, r=7.75, center=true); //под lm8luu
		translate([50, 0, 25]) cylinder(h=50.1, r=7.75, center=true);

		translate([-40, -170, 310]) rotate([0, 90, 0]) color([0.5, 0, 0]) cylinder(h=20.1, r=300, center=true); // срез лапы
		translate([40, -170, 310]) rotate([0, 90, 0]) color([0.5, 0, 0]) cylinder(h=20.1, r=300, center=true); // срез лапы

		translate([0, -60, 5]) cylinder(r=25, h=10.1, center=true); // отверстия в междулапии
		translate([0, -120, 5]) cylinder(r=25, h=10.1, center=true);

		translate([-40, -140, 25]) cylinder(r=1.75, h=50.1, center=true); // под винты в лапе
		translate([-40, -140, 13]) cylinder(r=4, h=5, center=true);		

		translate([-40, -85, 25]) cylinder(r=1.75, h=50.1, center=true);
		translate([-40, -85, 22]) cylinder(r=4, h=5, center=true);

		translate([-40, -30, 25]) cylinder(r=1.75, h=50.1, center=true);
		translate([-40, -30, 45]) cylinder(r=4, h=5, center=true);

		translate([40, -140, 25]) cylinder(r=1.75, h=50.1, center=true); // под винты в лапе
		translate([40, -140, 13]) cylinder(r=4, h=5, center=true);		

		translate([40, -85, 25]) cylinder(r=1.75, h=50.1, center=true);
		translate([40, -85, 22]) cylinder(r=4, h=5, center=true);

		translate([40, -30, 25]) cylinder(r=1.75, h=50.1, center=true);
		translate([40, -30, 45]) cylinder(r=4, h=5, center=true);

	}
}


