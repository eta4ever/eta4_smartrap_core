$fa=5; $fs=0.1;

wall=3; // толщина стенки
rout=2; // радиус скругления внешней оболочки
prof=15.2; // грань квадратного профиля
lmult=2.5; // длина уголка = lmult*prof
rhole=1.6; // радиус крепежного отверстия
    
difference()
{
    union() //внешнее
    {    

        hull() //x
        {
            translate([rout, rout, rout]) rotate([0,90,0]) cylinder(h=lmult*prof-rout, r=rout);
            translate([rout, prof+2*wall-rout, rout]) rotate([0,90,0]) cylinder(h=lmult*prof-rout, r=rout);
            translate([rout, rout, prof+2*wall-rout]) rotate([0,90,0]) cylinder(h=lmult*prof-rout, r=rout);
            translate([rout, prof+2*wall-rout, prof+2*wall-rout]) rotate([0,90,0]) cylinder(h=lmult*prof-rout, r=rout);
        }
        
        hull() //z
        {
            translate([rout, rout, rout]) cylinder(h=lmult*prof-rout, r=rout);
            translate([prof+2*wall-rout, rout, rout]) cylinder(h=lmult*prof-rout, r=rout);
            translate([rout, prof+2*wall-rout, rout]) cylinder(h=lmult*prof-rout, r=rout);
            translate([prof+2*wall-rout, prof+2*wall-rout, rout]) cylinder(h=lmult*prof-rout, r=rout);
            
        }
        
        hull() //y
        {
            translate([rout, rout, rout]) rotate([-90,0,0]) cylinder(h=lmult*prof-rout, r=rout);
            translate([prof+2*wall-rout, rout, rout]) rotate([-90,0,0]) cylinder(h=lmult*prof-rout, r=rout);
            translate([rout, rout, prof+2*wall-rout]) rotate([-90,0,0]) cylinder(h=lmult*prof-rout, r=rout);
            translate([prof+2*wall-rout, rout, prof+2*wall-rout]) rotate([-90,0,0]) cylinder(h=lmult*prof-rout, r=rout);
            
        }
        
        translate([rout, rout, rout]) sphere(r=rout); // уголок
        
     
    }
    
    union() //внутреннее
    {
        translate([wall, wall, wall]) cube([lmult*prof-wall+0.01, prof, prof]);
        translate([wall, wall, prof+wall-0.01]) cube([prof, prof, (lmult-1)*prof-wall+0.02]);
        translate([wall, prof+wall-0.01, wall]) cube([prof, (lmult-1)*prof-wall+0.02, prof]);
        
        // отверстия
        translate([lmult*prof -5, prof/2+wall, prof/2+wall]) 
            rotate([90,0,0]) cylinder(h=prof+2*wall+0.01, r=rhole, center=true);
        translate([lmult*prof -12, prof/2+wall, wall/2]) 
            cylinder(h=wall+0.01, r=rhole, center=true);
        translate([lmult*prof -12, prof/2+wall, prof+1.5*wall+0.25]) 
            cylinder(h=wall-0.49, r=rhole, center=true);

        translate([prof/2+wall, prof/2+wall, lmult*prof -5]) 
            rotate([90,0,0]) cylinder(h=prof+2*wall+0.01, r=rhole, center=true);
        translate([prof/2+wall, prof/2+wall, lmult*prof -12]) 
            rotate([90,0,90]) cylinder(h=prof+2*wall+0.01, r=rhole, center=true);
       
        translate([prof/2+wall, lmult*prof -5, prof/2+wall]) 
            rotate([0,90,0]) cylinder(h=prof+2*wall+0.01, r=rhole, center=true);
        translate([prof/2+wall, lmult*prof -12, wall/2]) 
            cylinder(h=wall+0.01, r=rhole, center=true);
        translate([prof/2+wall, lmult*prof -12, prof+1.5*wall+0.25]) 
            cylinder(h=wall-0.49, r=rhole, center=true);
        
        
        
    }
    
    
}