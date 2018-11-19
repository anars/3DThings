/*
 * Wire Cube Desktop Art
 * Copyright (c) 2018 Anar Software LLC. < http://anars.com >
 *
 * This program is free software: you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option) any later
 * version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * this program. If not, see < http://www.gnu.org/licenses/ >
 *
 */

$fn=50;

translate([0,0,-20]) {
    difference() {
        union() {
            rotate([45,-35,0])
                bigCube();
            rotate([45,-35,45])
                bigCube();
        }
        cylinder(60, r = 50, center = true);
    }
    translate([0,0,20])
        cylinder(10, r1 = 66, r2 = 46);
}

module bigCube() {
    translate([0,0,0])
        wireCube(50,50,50,2);
    translate([50,0,0])
        wireCube(50,50,50,2);

    translate([0,50,0])
        wireCube(50,50,50,2);
    translate([50,50,0])
        wireCube(50,50,50,2);

    translate([0,0,50])
        wireCube(50,50,50,2);
    translate([50,0,50])
        wireCube(50,50,50,2);

    translate([0,50,50])
        wireCube(50,50,50,2);
    translate([50,50,50])
        wireCube(50,50,50,2);
}

module wireCube(x, y, z, thickness) {
    cylinder(z, r = thickness);
    translate([x,0,0])
        cylinder(z, r = thickness);
    translate([0,y,0])
        cylinder(z, r = thickness);
    translate([x,y,0])
        cylinder(z, r = thickness);

    rotate([270,0,0])
        translate([0,-z,0]) {
            cylinder(y, r = thickness);
            translate([x,0,0])
                cylinder(y, r = thickness);
            translate([0,z,0])
                cylinder(y, r = thickness);
            translate([x,z,0])
                cylinder(y, r = thickness);
        }

    rotate([0,90,0])
        translate([-z,0,0]) {
            cylinder(x, r = thickness);
            translate([z,0,0])
                cylinder(x, r = thickness);
            translate([0,y,0])
                cylinder(x, r = thickness);
            translate([z,y,0])
                cylinder(x, r = thickness);
        }

    sphere(thickness);
    translate([x,0,0])
        sphere(thickness);
    translate([0,y,0])
        sphere(thickness);
    translate([0,0,z])
        sphere(thickness);
    translate([x,0,z])
        sphere(thickness);
    translate([0,y,z])
        sphere(thickness);
    translate([x,y,0])
        sphere(thickness);
    translate([x,y,z])
        sphere(thickness);
}