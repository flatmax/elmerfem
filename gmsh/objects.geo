// Gmsh project created on Fri Feb 11 15:36:49 2022
//+
Point(1) = {1, 1, 0, 1.0};
//+
Point(2) = {1, -1, 0, 1.0};
//+
Point(3) = {-1, -1, 0, 1.0};
//+
Point(4) = {-1, 1, 0, 1.0};
//+
Point(5) = {-.75, .1, 0, 1.0};
//+
Point(6) = {-.75, -.1, 0, 1.0};
//+
Point(7) = {.75, .1, 0, 1.0};
//+
Point(8) = {.75, -.1, 0, 1.0};
//+
Point(9) = {-0.3, 1.3, 0, 1.0};
//+
Line(1) = {4, 2};
//+
Recursive Delete {
  Curve{1}; 
}
//+
Point(10) = {-1, 1, 0, 1.0};
//+
Point(11) = {1, -1, 0, 1.0};
//+
Line(1) = {10, 1};
//+
Line(2) = {11, 1};
//+
Line(3) = {10, 3};
//+
Line(4) = {3, 11};
//+
Line(5) = {5, 6};
//+
Line(6) = {5, 7};
//+
Line(7) = {7, 8};
//+
Line(8) = {8, 6};
//+
Curve Loop(1) = {1, -2, -4, -3};
//+
Curve Loop(2) = {6, 7, 8, -5};
//+
Plane Surface(1) = {1, 2};
//+
Plane Surface(2) = {2};
//+
Physical Curve("extBoundary") = {1, 2, 4, 3};
//+
Physical Curve("spk") = {5};
//+
Physical Curve("tube") = {6, 8};
//+
Physical Curve("out") = {7};
//+
Physical Surface("aidOutside") = {1};
//+
Physical Surface("airInside") = {2};
//+
Physical Surface("airOutside") = {1};
//+
Physical Surface("aidOutside") -= {1};
