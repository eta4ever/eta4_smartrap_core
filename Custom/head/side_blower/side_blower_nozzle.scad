$fa=10; $fs=0.5;

// сопло
rotate([90,0,-90]){
    difference(){
        union(){
            linear_extrude(height = 29, center = true, convexity = 10, twist = 0)
            polygon([[0, 5], [5, 0], [37, 12], [18, 12]]);
        }
        
        union(){
            linear_extrude(height = 25, center = true, convexity = 10, twist = 0)
            polygon([[1, 4], [4, 1], [34, 12], [21, 12]]);
            
        }
        
    }
}

// ухо
difference(){
    hull(){
        translate([29/2+7, -18+1.5, 12+2.5]) rotate([90,0,0]) cylinder(r=3, h=3, center=true);
        translate([29/2, -18+1.5, 12-3]) cube([1, 3, 6], center=true);
    }
    
    translate([29/2+7, -18+1.5, 12+2.5]) rotate([90,0,0]) cylinder(r=1.7, h=3, center=true);
}