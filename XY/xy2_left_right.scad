$fa=5; $fs=0.1;

// новая деталь симметричная, левая-правая не имеет значения

profile=15.2;

//test tube
//translate([5+profile/2, 15.8+profile/2, 12.5]) color("Red", 0.5) cube([profile, profile, 100], center=true);

difference(){
	translate([-67, -81, 0]) import("xy2.stl"); // исходная модель
	
	union(){
		translate([0, -1, -0.1]) cube([65, 1, 26]); // чуть спилить
		translate([0, -0.1 , 20]) cube([25, 35, 10.01]); // еще спилить, там паз под ремни не нужен, т.к. деталь не уперта в угол
		translate([-0.1, -0.1, -0.01]) cube([30, 35, 20.02]); // отрезах нафиг обхват и еще чуток
		
		translate([32,15, 10]) cylinder(h=20.1, r=8, center=true); // экономичный вырез
	}	
}


difference(){

	union(){	
		hull(){
			translate([10,15,10]) cylinder(h=20, r=5, center=true); //новый обхват
			translate([30,5,10]) cylinder(h=20, r=5, center=true);
			translate([30,30,10]) cylinder(h=20, r=5, center=true);
			translate([10,30,10]) cylinder(h=20, r=5, center=true);
		}
	}

	union(){
		translate([5+profile/2, 15.8+profile/2, 10]) cube([profile, profile, 25], center=true); //под профиль
		translate([5+profile/2, 20, 5]) rotate([90,0,0]) cylinder(h=30, r=1.7, center=true); //крепежные
		translate([5+profile/2, 20, 15]) rotate([90,0,0]) cylinder(h=30, r=1.7, center=true);
		translate([5+profile/2, 7.5, 5]) rotate([90,0,0]) cylinder(h=5, r=3.5, center=true); //под головки винтов
		translate([5+profile/2, 7.5, 15]) rotate([90,0,0]) cylinder(h=5, r=3.5, center=true);

		translate([32,15, 10]) cylinder(h=20.1, r=8, center=true); // экономичный вырез

		

	}

}