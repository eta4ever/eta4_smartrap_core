//$fa=5; $fs=0.1;

wall=2;
R=2;
perfR=1.75;
intL=143+20;
intW=84+30;
intH=40;

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
		hull(){
			translate([R+wall, R+wall, outH/2+wall/2]) cylinder(h=intH, r=R, center=true);
			translate([intL+wall, R+wall, outH/2+wall/2]) cylinder(h=intH, r=R, center=true);
			translate([R+wall, intW+wall, outH/2+wall/2]) cylinder(h=intH, r=R, center=true);
			translate([intL+wall, intW+wall, outH/2+wall/2]) cylinder(h=intH, r=R, center=true);
		}
	
		// перфорация раз
		for (x_pos = [R+wall+2*perfR : 6 : intL-2*perfR]){
			for (y_mul = [0: 3: 9]){
				translate([x_pos, R+wall+(2+y_mul)*perfR, wall/2]) cylinder(r=perfR, h=wall, center=true);
			}
		}
		
		// под плату	
		translate([R+wall+9, R+wall+27, wall/2]){
			cylinder(r=1.8, h=wall, center=true);
			translate([135, 0, 0]) cylinder(r=1.8, h=wall, center=true);
			translate([0, 76, 0]) cylinder(r=1.8, h=wall, center=true);
			translate([135, 76, 0]) cylinder(r=1.8, h=wall, center=true);	
		}
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
		translate([R+wall+9, R+wall+27, wall+1]){
			cylinder(r=1.8, h=6, center=true);
			translate([135, 0, 0]) cylinder(r=1.8, h=6, center=true);
			translate([0, 76, 0]) cylinder(r=1.8, h=6, center=true);
			translate([135, 76, 0]) cylinder(r=1.8, h=6, center=true);
		}

	}
}

