$fa=5; $fs=0.1;

difference(){
    hull(){
        cylinder(h=10, r=8, center=true);
        translate([20, -8, -5]) cube([1, 16,10]);
    }
    
    union(){
        hull(){
            cylinder(h=10.01, r=4, center=true);
            translate([20, -4, -5.01]) cube([1.01, 8, 10.02]);
        }
        
        translate([15, 0, 0]) rotate([90, 0, 0]) cylinder(h=16.01, r=1.75, center=true);
    }
    
}