
bevel = 8;
hi = 50;
l=43;
shaft_len=20;

*difference() {
  cube([l,l,hi], center=true);

  for(i=[0:3]) {
    color("green")
      rotate([0,0,90*i])
        translate([l/2,l/2,0])
          rotate([0,0,45])
            cube([bevel,bevel,hi+10],center=true);
  }

  translate([0,0,shaft_len/2+hi/2-2])
    cylinder(r=5/2, h=shaft_len+2,center=true, $fn=20);
}

translate([0,0,shaft_len/2+hi/2-2])
    cylinder(r=5/2, h=shaft_len+2,center=true, $fn=20);