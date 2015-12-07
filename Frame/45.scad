$fa=5; $fs=0.1;

R=2;
PR=15.4;
OFF=25;

difference(){
    
    union(){
    
        hull(){ // обхват
            translate([-15+R, PR/2+1, 0]) sphere(r=R);
            translate([-15+R, -PR/2-1, 0]) sphere(r=R);
            translate([15-R, PR/2+1, 0]) sphere(r=R);
            translate([15-R, -PR/2-1, 0]) sphere(r=R);
            
            translate([-15+R, PR/2+1, PR]) sphere(r=R);
            translate([-15+R, -PR/2-1, PR]) sphere(r=R);
            translate([15-R, PR/2+1, PR]) sphere(r=R);
            translate([15-R, -PR/2-1, PR]) sphere(r=R);
        }
        
        hull(){
            translate([-15+R, PR/2+1, PR]) sphere(r=R);
            translate([-15+R, -PR/2-1, PR]) sphere(r=R);
            translate([-15+R+OFF, PR/2+1, OFF+PR]) sphere(r=R);
            translate([-15+R+OFF, -PR/2-1, OFF+PR]) sphere(r=R);
        
            translate([30, PR/2+1, PR]) sphere(r=R);
            translate([30, -PR/2-1, PR]) sphere(r=R);
//            translate([15-R+OFF, PR/2+1, OFF+PR]) sphere(r=R);
//            translate([15-R+OFF, -PR/2-1, OFF+PR]) sphere(r=R);  
        }
    }
    
    union(){
        
        translate([0,0,PR/2-R]) cube([50, PR, PR], center=true);
        translate([1,0,PR/2+10]) rotate([0, -45, 0]) cube([100, PR, PR], center=true);
        
        
        translate([-9, 0, 6]) rotate([90,0,0]) cylinder(h=25, r=1.8, center=true);
        translate([9, 0, 6]) rotate([90,0,0]) cylinder(h=25, r=1.8, center=true);
    
        translate([5, 0, 23]) rotate([90,0,0]) cylinder(h=25, r=1.8, center=true);
        translate([14, 0, 31]) rotate([90,0,0]) cylinder(h=25, r=1.8, center=true);   
        
    }
    
    
}