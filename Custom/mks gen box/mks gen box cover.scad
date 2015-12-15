$fa=10; $fs=0.5;

wall=2;
R=2;
perfR=1.75;
intL=143+40;
intW=84+30;
intH=4;

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
		for (x_pos = [R+wall+2*perfR+5 : 6 : R+wall+intL-2*perfR-5]){
			for (y_mul = [0: 3: 60]){
				translate([x_pos, R+wall+(2+y_mul)*perfR, wall/2]) cube([perfR*2, perfR*2, wall+0.05], center=true);
			}
		}
		
		// под винты крышки
		translate([R+2, R+2, outH/2]) cylinder(r=1.75, h=outH+0.05, center=true);
		translate([R+2, intW+wall, outH/2]) cylinder(r=1.75, h=outH+0.05, center=true);
		translate([R+intL, R+2, outH/2]) cylinder(r=1.75, h=outH+0.05, center=true);
		translate([R+intL, intW+wall, outH/2]) cylinder(r=1.75, h=outH+0.05, center=true);
	}
}
