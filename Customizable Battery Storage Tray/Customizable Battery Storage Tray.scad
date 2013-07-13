/*
 * Customizable Battery Storage Tray
 * Copyright (c) 2013 Anar Software LLC. < http://anars.com >
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

// Battery Type
battery_type = "A"; // [AAA, AA, C, D, 1/2AA, AAAA, A, B, F, N, NO. 6, SUB-C, A23, A27, DUPLEX, 4SR44, 523, 531, CR123A, CR2]

// Depth of a battery hole (mm)
depth_of_hole = 20;

// Thickness of the bottom (mm)
thickness_of_bottom = 2;

// Number of batteries in a row
number_of_rows = 3;

// Number of batteries in a column
number_of_column = 5;

// Thickness of the edges (mm)
thickness_of_edges = 4;

/* [Hidden] */

batteries =
[
	["AAA", 10.5],
	["AA", 14.5],
	["C", 26.2],
	["D", 34.2],
	["1/2AA", 14.5],
	["AAAA", 8.3],
	["A", 17],
	["B", 21.5],
	["F", 33],
	["N", 12],
	["NO. 6", 67],
	["SUB-C", 22.2],
	["A23", 10.3],
	["A27", 8],
	["DUPLEX", 21.8],
	["4SR44", 13],
	["523", 17.1],
	["531", 17.1],
	["CR123A", 17],
	["CR2", 15.6]
];

$fn = 100;

battery_diameter = batteries[search([battery_type], batteries)[0]][1] + 1;

difference()
{
	minkowski()
	{
		cube([number_of_column * battery_diameter, number_of_rows * battery_diameter, depth_of_hole + thickness_of_bottom]);
		cylinder(r = thickness_of_edges, h = 0.01);
	}

	for ( x = [0 : number_of_column - 1] )
		for ( y = [0 : number_of_rows - 1] )
			translate([x * battery_diameter + battery_diameter / 2, y * battery_diameter + battery_diameter / 2, thickness_of_bottom])
				cylinder(r = battery_diameter / 2, depth_of_hole + 1);

	if (number_of_column > 1)
		for ( x = [0 : number_of_column - 2] )
			for ( y = [0 : number_of_rows - 1] )
				translate([x * battery_diameter + battery_diameter, y * battery_diameter + battery_diameter / 2, thickness_of_bottom])
					cylinder(r = battery_diameter / 8, depth_of_hole + 1);

	if (number_of_rows > 1)
		for ( x = [0 : number_of_column - 1] )
			for ( y = [0 : number_of_rows - 2] )
				translate([x * battery_diameter + battery_diameter / 2, y * battery_diameter + battery_diameter, thickness_of_bottom])
					cylinder(r = battery_diameter / 8, depth_of_hole + 1);
}