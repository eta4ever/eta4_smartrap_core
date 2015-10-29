$fa=5; $fs=0.1;

module hexagon(in_diam, height) {
  cube_x = in_diam/1.75;
  for (r = [-60, 0, 60]) rotate([0,0,r]) cube([cube_x, in_diam, height], center=true);
}

// надо две штуки, низ и верх
difference(){
    hull(){
        translate([-5.5, -5.5, 0]) cylinder(h=4, r=4, center=true);
        translate([-5.5, 5.5, 0]) cylinder(h=4, r=4, center=true);
        translate([5.5, -5.5, 0]) cylinder(h=4, r=4, center=true);
        translate([5.5, 5.5, 0]) cylinder(h=4, r=4, center=true);
    }
    
    union(){
        // крепежные отверстия
        translate([-5.5, -5.5, 0]) cylinder(h=4.01, r=1.75, center=true);
        translate([-5.5, 5.5, 0]) cylinder(h=4.01, r=1.75, center=true);
        translate([5.5, -5.5, 0]) cylinder(h=4.01, r=1.75, center=true);
        translate([5.5, 5.5, 0]) cylinder(h=4.01, r=1.75, center=true);
        
        // под шпильку
        cylinder(h=4.01, r=2.75, center=true);
        
        // под гайку
        translate([0,0,1]) hexagon(8.2, 2.01);
    }
}

