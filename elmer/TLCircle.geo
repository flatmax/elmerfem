// Gmsh project created on Sat Feb 12 20:38:23 2022
SetFactory("OpenCASCADE");
//+
Point(1) = {-0.75, .125, 0, 1.0};
//+
Point(2) = {-0.75, -.125, 0, 1.0};
//+
Point(3) = {0.75, -.125, 0, 1.0};
//+
Point(4) = {0.75, .125, 0, 1.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Circle(5) = {0, 0, 0, 10, 0, 2*Pi};
//+
Curve Loop(1) = {5};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {4, 1, 2, 3};
//+
Recursive Delete {
  Surface{1}; 
}
//+
Physical Curve("wall") = {4, 2};
//+
Physical Curve("speaker") = {1};
//+
Physical Curve("open") = {3};
//+
Curve Loop(3) = {4, 1, 2, 3};
//+
Plane Surface(1) = {3};
//+
Curve Loop(4) = {4, 1, 2, 3};
//+
Physical Surface("air") = {1};
//+
Circle(5) = {0, 0, 0, 10, 0, 2*Pi};
//+
Curve Loop(5) = {5};
//+
Curve Loop(6) = {4, 1, 2, 3};
//+
Plane Surface(2) = {5, 6};
//+
Physical Surface("air") += {2};
//+
Physical Curve("wall") += {5};
//+
Physical Curve("edge") = {5};
//+
Physical Curve("wall") -= {5};
