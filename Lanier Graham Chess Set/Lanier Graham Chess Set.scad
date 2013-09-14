/*
 * Lanier Graham Chess Set
 * Original Degign Copyright (c) 1967 F. Lanier Graham
 * Source Code Copyright (c) 2013 Anar Software LLC. < http://anars.com >
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

thickness = 10;

padding = 1;

module pawn()
{
	cube(thickness);
}

module rock()
{
	cube([thickness, thickness, thickness * 2]);
}

module knight()
{
	difference()
	{
		cube([thickness, thickness, thickness * 2]);
		translate([-1, thickness / 2, thickness])
			cube([thickness + 2, thickness / 2 + 1, thickness + 1]);
	}
}

module bishop()
{
	difference()
	{
		cube([thickness, thickness, thickness * 2]);
		translate([-1, thickness, thickness])
			rotate(a=[45,0,0])
				cube([thickness + 2, thickness, sqrt(pow(thickness, 2) + pow(thickness, 2))]);
	}
}

module queen()
{
	difference()
	{
		cube([thickness, thickness, thickness * 3]);
			translate([-1, thickness / 2, thickness * 3 - sqrt(pow(thickness, 2) / 4)])
				rotate(a=[45,0,0])
			cube([thickness + 2, sqrt(pow(thickness, 2) / 2), sqrt(pow(thickness, 2) / 2)]);
	}
}

module king()
{
	union()
	{
		cube([thickness, thickness, thickness * 3]);
			translate([0, thickness / 2, thickness * 3 - sqrt(pow(thickness, 2) / 4)])
				rotate(a=[45,0,0])
			cube([thickness, sqrt(pow(thickness, 2) / 2), sqrt(pow(thickness, 2) / 2)]);
	}
}

module set()
{
	for ( i = [0 : 7] )
		translate([thickness * i + (i * padding), thickness + padding, 0])
			pawn();

	translate([thickness * 0 + (0 * padding), 0, 0])
		rock();

	translate([thickness * 1 + (1 * padding), 0, 0])
		knight();

	translate([thickness * 2 + (2 * padding), 0, 0])
		bishop();

	translate([thickness * 3 + (3 * padding), 0, 0])
		queen();

	translate([thickness * 4 + (4 * padding), 0, 0])
		king();

	translate([thickness * 5 + (5 * padding), 0, 0])
		bishop();

	translate([thickness * 6 + (6 * padding), 0, 0])
		knight();

	translate([thickness * 7 + (7 * padding), 0, 0])
		rock();

}

set();

// pawn();
// rock();
// knight();
// bishop();
// queen();
// king();
