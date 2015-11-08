$fa=5; $fs=0.1;

difference(){
	
	union(){
		
		translate([-30, 0, 25]) cylinder(h=50, r=12, center=true); //под lm8luu 60mm
		translate([30, 0, 25]) cylinder(h=50, r=12, center=true);
		translate([-30, 16, 25]) cube([6,10,50], center=true);
		translate([30, 16, 25]) cube([6,10,50], center=true);

		translate([-55, 0, 25]) cylinder(h=50, r=12, center=true); //под lm8luu 110mm
		translate([55, 0, 25]) cylinder(h=50, r=12, center=true);
		translate([-55, 16, 25]) cube([6,10,50], center=true);
		translate([55, 16, 25]) cube([6,10,50], center=true);
		translate([-55, -15, 25]) cube([12,10,50], center=true);
		translate([55, -15, 25]) cube([12,10,50], center=true);

		translate([0, 5, 25]) cube([74, 10, 50], center=true); // перемычка

		hull(){
			translate([0, -10, 10]) cylinder(h=20, r=15, center=true); // под tr8x8
			translate([0, 0, 10]) cube([30, 1, 20], center=true);
		}

		translate([-40, -75, 25]) cube([20, 150, 50], center=true); // лапа
		translate([40, -75, 25]) cube([20, 150, 50], center=true); // лапа

		translate([0, -75, 5]) cube([80, 150,10], center=true); // междулапие 
		

	}

	union(){

		translate([0, -10, 10]) {	// под ходовинт
			cylinder(h=20.1, r=5.3, center=true); 
			translate([-5.675, -5.675, 0]) cylinder(h=20.1, r=1.75, center=true); 
			translate([-5.675, 5.675, 0]) cylinder(h=20.1, r=1.75, center=true);
			translate([5.675, -5.675, 0]) cylinder(h=20.1, r=1.75, center=true);
			translate([5.675, 5.675, 0]) cylinder(h=20.1, r=1.75, center=true);
		}
		
		translate([-30, 0, 25]) cylinder(h=50.1, r=7.75, center=true); //под lm8luu 60mm
		translate([30, 0, 25]) cylinder(h=50.1, r=7.75, center=true);
		translate([-30, 15, 25]) cube([2, 20, 50.1], center=true);
		translate([30, 15, 25]) cube([2, 20, 50.1], center=true);
		translate([-30, 16.5, 10]) rotate([0, 90, 0]) cylinder(h=6.1, r=1.75, center=true); // отверстия зажима
		translate([-30, 16.5, 40]) rotate([0, 90, 0]) cylinder(h=6.1, r=1.75, center=true);
		translate([30, 16.5, 10]) rotate([0, 90, 0]) cylinder(h=6.1, r=1.75, center=true);
		translate([30, 16.5, 40]) rotate([0, 90, 0]) cylinder(h=6.1, r=1.75, center=true);

		translate([-55, 0, 25]) cylinder(h=50.1, r=7.75, center=true); //под lm8luu 110mm
		translate([55, 0, 25]) cylinder(h=50.1, r=7.75, center=true);
		translate([-55, 15, 25]) cube([2, 20, 50.1], center=true);
		translate([55, 15, 25]) cube([2, 20, 50.1], center=true);
		translate([-55, 16.5, 10]) rotate([0, 90, 0]) cylinder(h=6.1, r=1.75, center=true); // отверстия зажима
		translate([-55, 16.5, 40]) rotate([0, 90, 0]) cylinder(h=6.1, r=1.75, center=true);
		translate([55, 16.5, 10]) rotate([0, 90, 0]) cylinder(h=6.1, r=1.75, center=true);
		translate([55, 16.5, 40]) rotate([0, 90, 0]) cylinder(h=6.1, r=1.75, center=true);

		translate([-40, -170, 310]) rotate([0, 90, 0]) cylinder(h=20.1, r=300, center=true); // срез лапы
		translate([40, -170, 310]) rotate([0, 90, 0]) cylinder(h=20.1, r=300, center=true); // срез лапы

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


