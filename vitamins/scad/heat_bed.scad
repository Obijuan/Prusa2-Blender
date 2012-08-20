
difference() {
  cube([200,200,2],center=true);

  for(i=[0:3]) {
      rotate([0,0,i*90])
      translate([200/2-3/2-1,200/2-3/2-1,0])
        cylinder(r=3/2, h=10, center=true, $fn=20);
  }
}