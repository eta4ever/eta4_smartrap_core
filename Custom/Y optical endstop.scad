$fa=5; $fs=0.1;

hull(){
    cylinder(h=1.5, r=2.5, center=true);
    translate([-10, -10, 0]) cylinder(h=1.5, r=2.5, center=true);
}

hull(){
    cylinder(h=1.5, r=2.5, center=true);
    translate([0, 20, 0]) cylinder(h=1.5, r=2.5, center=true);
}

translate([-12.5, -12.5, -0.75]) cube([10, 2, 10]);

translate([12, 5, 0.25]) // шайба
    difference(){
        cylinder(h=2, r=4, center=true);
        cylinder(h=2.01, r=2, center=true);
    }