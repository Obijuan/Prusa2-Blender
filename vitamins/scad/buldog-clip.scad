front_hi=4;
back_hi=10;
width=25;
len=15;
thickness=1;

//-- handle
diam=15;
h_len=10;


ang = asin( (back_hi/2 - front_hi/2)/ len);

module handle() 
{
  difference() {
    union() {
      difference() {
        cylinder(r=15/2, h=thickness,center=true);
        cylinder(r=(15-thickness)/2, h=thickness+1,center=true);
      }

      translate([-h_len/2-diam/2+thickness/2,0,0])
        cube([h_len,diam/4,thickness],center=true);
    }

    translate([-h_len/2-diam/2+thickness/2,0,0])
    cube([h_len+2*thickness, diam/4-2*thickness, thickness+1], center=true);
  }

}


module body()
{
  cube([thickness,width,back_hi],center=true);

  for(i=[-1,1]) {
    translate([0,0,i*back_hi/2])
      rotate([0,-i*ang,0])
       translate([-len/2,0,0])
         cube([len, width, thickness],center=true);

    translate([0,0,i*back_hi/2])
      rotate([90,0,0])
        cylinder(r=1.2/2, h=width, center=true, $fn=10);
  }
}


*body();

for(i=[-1,1]) {
  rotate([0,-i*ang,0])
    translate([diam/2+h_len, 0, i*back_hi/2])
      handle();
}


