$fa=10; $fs=0.5;

difference(){

    //exterior
    union(){
    
        //фланец
        cube([42,42,10], center=true);
        
        //сопло
        
        difference(){
        
            rotate([90,0,0])
                linear_extrude(height = 35, center = true, convexity = 10, twist = 0)
                    polygon([[-19, 5], [16, 25], [16, 30], [21, 30], [21, 5]], [[0,2,3,4], [0,1,2]]);
            
            rotate([90,0,0])
                linear_extrude(height = 32, center = true, convexity = 10, twist = 0)
                    polygon([[-17, 4.99], [17, 24], [17, 30.01], [20, 30.01], [20, 4.99]], [[0,2,3,4], [0,1,2]]);
        }
        

    }
    
    //interior
    union(){

        //центральное отверстие
        cylinder(h=10.01, r1=19, r2=17, center=true);
   
        //крепежные отверстия    
        {
            translate([16,16,-0.5]) cylinder(h=9.01, r=1.8, center=true);
            translate([-16,16, -0.5]) cylinder(h=9.01, r=1.8, center=true);
            translate([-16,-16, -0.5]) cylinder(h=9.01, r=1.8, center=true);
            translate([16, -16, -0.5]) cylinder(h=9.01, r=1.8, center=true);
            
            translate([16, 16, 0]) cylinder(h=3, r=3.5, center=true);
            translate([16, 19, 0]) cube([7,6,3], center=true);
            
            translate([16, -16, 0]) cylinder(h=3, r=3.5, center=true);
            translate([16, -19, 0]) cube([7,6,3], center=true);
            
            translate([-16, 16, 0]) cylinder(h=3, r=3.5, center=true);
            translate([-16, 19, 0]) cube([7,6,3], center=true);
            
            translate([-16, -16, 0]) cylinder(h=3, r=3.5, center=true);
            translate([-16, -19, 0]) cube([7,6,3], center=true);
        }
        
    }
 
    
}

// ухо
difference()
{
	hull(){
		translate([-31, 0, 0]) rotate([90, 0, 0]) cylinder(r=5, h=15, center=true);
		translate([-21, 0, 0]) cube([1, 15, 10], center=true);
	}

	translate([-31, 0, 0]) rotate([90, 0, 0]) cylinder(r=1.75, h=15.1, center=true);
}

