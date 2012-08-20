he_diam=16.5;
he_len=50;

block_x = he_diam+15;
block_y=he_diam+2;
block_z=11;

//-- central body
difference() {
  cylinder(r=he_diam/2, h=he_len, center=true, $fn=30);
  cylinder(r=3/2, h=60, center=true, $fn=30);
}


//-- Block
*color("blue")
translate([0, 0,
               -block_z/2-he_len/2+1])
difference() {
  translate([block_x/2-he_diam/2-3,0,0])
    difference() {
      cube([he_diam+15,he_diam+2,11],center=true);

    translate([block_x/2-6-2,0,0])
      rotate([90,0,0])
       cylinder(r=6/2, h=block_y+10,center=true,$fn=20);
  }
  cylinder(r=3/2, h=block_z+2, center=true,$fn=10);
}

*color("green")
translate([0,0,-block_z/2-he_len/2-block_z+2.5+1])
difference() {
  cylinder(r=16/2, h=6, center=true, $fn=6);
  cylinder(r=3/2, h=7, $fn=10,center=true);
}

*color("red")
translate([0,0,-block_z/2-he_len/2-block_z+3-6 -5/2+2])
difference() {
  cylinder(r2=13/2, r1=2/2, $fn=20, h=10,center=true);
  cylinder(r=0.5/2, h=12, $fn=10,center=true);
}