/*
 * ZipTire - Tire Traction Tie For Snow And Sand
 * Copyright (c) 2016-2019 Anar Software LLC. < http://anars.com >
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

// Maximum length of the tie (mm)
max_length = 180;

// Height (thickness) of the tie (mm)
tie_height = 2;

// Width of the tie (mm)
tie_width  = 20;

// Height of a stud (mm)
stud_height = 10;

// Bottom radius of a stud (mm)
stud_bottom = 8;

// Top radius of a stud (mm)
stud_top = 1;

// Gap between studs (mm)
stud_gap = 4;

// Zip tie connector hole height (mm)
hole_height = 2;

// Zip tie connector hole width (mm)
hole_width  = 10;

/* [Hidden] */

band_lenght = floor((max_length - (tie_width + stud_bottom) * 2) / (stud_bottom * 2 + stud_gap)) * (stud_bottom * 2 + stud_gap) + ((tie_width + stud_bottom) * 2 );

number_of_studs = (band_lenght - (tie_width + stud_bottom) * 2) / (stud_bottom * 2 + stud_gap);

difference()
{
    union()
    {
        translate([tie_width / 2, 0, 0])
        hull()
        {
            cylinder(h=tie_height, r1=tie_width / 2, r2=tie_width / 2);
            translate([band_lenght - tie_width, 0, 0])
                cylinder(h=tie_height, r1=tie_width / 2, r2=tie_width / 2);
        }
        for ( i = [0 : number_of_studs] )
        {
            translate([(i * (stud_bottom * 2 + stud_gap)) + (tie_width + stud_bottom), 0, tie_height])
                cylinder(h=stud_height, r1=stud_bottom, r2=stud_top);
        }
    }
    translate([tie_width / 2 - (hole_height / 2), hole_width * -0.5, 0])
        cube([hole_height, hole_width, tie_height * 2]);
    translate([band_lenght - (tie_width / 2 + ( hole_height / 2)), hole_width * -0.5, 0])
        cube([hole_height, hole_width, tie_height * 2]);
}