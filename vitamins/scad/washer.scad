drill = 4;
diam_ext=8.5;


difference() {
  cylinder(r=diam_ext/2, h=0.6, center=true, $fn=20);
  cylinder(r=drill/2, h=15, center=true, $fn=20);
}