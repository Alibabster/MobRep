class Cuboid{
  int length;
  int width;
  int height;
  Cuboid(this.length, this.width, this.height) {
  }
  int get SurfaceArea => 2*length*width+2*length*height+2*height*width;
  int get Volume => length*width*height;
}

class Cube extends Cuboid {
  int side;

  Cube(this.side)
      : super(side, side, side);
}