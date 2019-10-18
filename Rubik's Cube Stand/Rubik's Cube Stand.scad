/*
 * Rubik's Cube Stand
 * Copyright (c) 2019 Anar Software LLC. < http://anars.com >
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

/* [Global] */

/* [Cube Settings] */
// Cube Measurement (mm)
cube = 57; // [0:1:]

/* [Facets Settings] */
// Minimum angle for a fragment
$fa = 12;
// Minimum size of a fragment
$fs = 2;
// Number of fragments
$fn = 0;

/* [Hidden] */
piece = cube / 3;
stand = cube * 0.4;

difference(){
    difference(){
        sphere(stand);
        translate([-1 * stand, -1 * stand, -1 * stand])
            cube([2 * stand, 2 * stand, stand]);
    }
    translate([0, 0, cube])
        rotate([45, 35, 45])
    translate([cube / -2, cube / -2, cube / -2])
        for(x = [0:2])
            for(y = [0:2])
                for(z = [0:2])
                    translate([x * piece, y * piece, z * piece ])
                        #cube(piece - 1);
}