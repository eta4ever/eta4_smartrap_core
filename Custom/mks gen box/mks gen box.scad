$fa=10; $fs=0.5;

wall=2;
R=2;
perfR=1.75;
intL=143+40;
intW=84+30;
intH=30;

outL=intL+2*wall;
outW=intW+2*wall;
outH=intH+wall;

difference(){
	
	union(){
	
	// коробка
	hull(){
		translate([R, R, outH/2]) cylinder(h=outH, r=R, center=true);
		translate([outL, R, outH/2]) cylinder(h=outH, r=R, center=true);
		translate([R, outW, outH/2]) cylinder(h=outH, r=R, center=true);
		translate([outL, outW, outH/2]) cylinder(h=outH, r=R, center=true);
	}
	
	}

	union(){
	
		// вырез коробки
		difference(){
			hull(){
				translate([R+wall, R+wall, outH/2+wall/2+0.02]) cylinder(h=intH, r=R, center=true);
				translate([intL+wall, R+wall, outH/2+wall/2+0.02]) cylinder(h=intH, r=R, center=true);
				translate([R+wall, intW+wall, outH/2+wall/2+0.02]) cylinder(h=intH, r=R, center=true);
				translate([intL+wall, intW+wall, outH/2+wall/2+0.02]) cylinder(h=intH, r=R, center=true);
			}
			union(){// не вырезать углы - оставить под винты крышки
				translate([R+2, R+2, outH/2]) cylinder(r=3, h=outH, center=true);
				translate([R+2, intW+wall, outH/2]) cylinder(r=3, h=outH, center=true);
				translate([R+intL, R+2, outH/2]) cylinder(r=3, h=outH, center=true);
				translate([R+intL, intW+wall, outH/2]) cylinder(r=3, h=outH, center=true);
			}
		}
	
		// перфорация раз
		for (x_pos = [R+wall+2*perfR : 6 : R+wall+intL-2*perfR]){
			for (y_mul = [0: 3: 9]){
				translate([x_pos, R+wall+(2+y_mul)*perfR, wall/2]) cube([perfR*2, perfR*2, wall+0.05], center=true);
			}
		}
		
		// под плату	
		translate([R+wall+9, R+wall+27, wall/2]){
			cylinder(r=1.8, h=wall+0.05, center=true);
			translate([135, 0, 0]) cylinder(r=1.8, h=wall+0.05, center=true);
			translate([0, 76, 0]) cylinder(r=1.8, h=wall+0.05, center=true);
			translate([135, 76, 0]) cylinder(r=1.8, h=wall+0.05, center=true);	
		}

		// перфорация два
		for (x_pos = [R+wall+15+135+2*perfR : 6 : R+wall+intL-2*perfR]){
			for (y_mul = [0: 3: 60]){
				translate([x_pos, R+wall+(2+y_mul)*perfR, wall/2]) cube([perfR*2, perfR*2, wall+0.05], center=true);
			}
		}

		// под винты крышки
		translate([R+2, R+2, outH/2]) cylinder(r=1.75, h=outH+0.05, center=true);
		translate([R+2, intW+wall, outH/2]) cylinder(r=1.75, h=outH+0.05, center=true);
		translate([R+intL, R+2, outH/2]) cylinder(r=1.75, h=outH+0.05, center=true);
		translate([R+intL, intW+wall, outH/2]) cylinder(r=1.75, h=outH+0.05, center=true);

		// под провода
		translate([outL-wall/2+R, wall+17, wall+intH/2]) rotate([0, 90, 0]) cylinder(h=wall+0.05, r=12, center=true);

		// перфорация боковины
		for (x_pos = [R+wall+2*perfR+5 : 10 : R+wall+intL-2*perfR-5]){
				translate([x_pos, wall/2, 16]) rotate([90, 0, 0]) cylinder(r=perfR, h=wall+0.2, center=true);
		}

		// под USB
		translate([R+wall+9+135-16-13/2, outW+wall/2, wall+4+1.5+12/2]) cube([13, wall+0.1, 12], center=true);
	}
}

//упоры под плату
difference(){
	union(){
		translate([R+wall+9, R+wall+27, wall+2]){
			cylinder(r=3.5, h=4, center=true);
			translate([135, 0, 0]) cylinder(r=3.5, h=4, center=true);
			translate([0, 76, 0]) cylinder(r=3.5, h=4, center=true);
			translate([135, 76, 0]) cylinder(r=3.5, h=4, center=true);
		}
	}

	union(){
		translate([R+wall+9, R+wall+27, wall+2]){
			cylinder(r=1.8, h=4+0.05, center=true);
			translate([135, 0, 0]) cylinder(r=1.8, h=4+0.05, center=true);
			translate([0, 76, 0]) cylinder(r=1.8, h=4+0.05, center=true);
			translate([135, 76, 0]) cylinder(r=1.8, h=4+0.05, center=true);
		}

	}
}

