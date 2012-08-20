
module box(pos, r)
{
  x = pos[0]-2*r;
  y = pos[1]-2*r;
  z = pos[2];

  hull() {
    cube([x,y,z],center=true);

    for(i=[0:3]) {
      rotate([0,0,i*90])
      translate([x/2,y/2,0])
      cylinder(r=r, h=z,center=true);
    }
  }
}

box(pos=[180,180,2],r=15);