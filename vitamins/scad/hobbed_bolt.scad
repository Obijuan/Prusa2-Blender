bolt_len=60;
oring_diameter = 5;   //-- Interior diameter
oring_width=3;


//-- Bolt hex head
translate([0,0,-5/2])
  cylinder(r=15/2, h=5, $fn=6, center=true);

difference() {
  //-- Bolt body 
  translate([0,0,bolt_len/2])
    cylinder(r=8/2,h=bolt_len,center=true, $fn=20);

  //-- Mark
  translate([0,0,27])
    rotate_extrude(convexity = 10, $fn=30)
      translate([oring_diameter/2 + oring_width/2, 0, 0])
      circle(r = oring_width/2, $fn = 20);
}