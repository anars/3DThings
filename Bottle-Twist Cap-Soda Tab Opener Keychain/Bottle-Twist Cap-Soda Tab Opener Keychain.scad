/*
 * Bottle - Twist Cap - Soda Tab Opener Keychain
 * Copyright (c) 2013-2019 Anar Software LLC. < http://anars.com >
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

/* [Facets Settings] */
// Minimum angle for a fragment
$fa = 12;
// Minimum size of a fragment
$fs = 2;
// Number of fragments
$fn = 0;

/* [Hidden] */

difference()
{
	union()
	{
		difference()
		{
			cylinder(r = 50, h = 15);
			translate([0, 0, -1])
				cylinder(r = 30, h = 12);
			translate([-14, -22, 8])
				cube([28, 44, 8]);
		}
		
		for ( i = [0 : 20] )
			rotate( i * 360 / 21, [0, 0, 1])
				translate([30, 0, 0])
					cylinder(r = 4, h = 12);
		
		for ( i = [0 : 17] )
			rotate( i * 360 / 18, [0, 0, 1])
				translate([48, 0, 0])
					cylinder(r = 4, h = 15);
		
		difference()
		{
			union()
			{
				translate([50, -2, 0])
					cube([8, 4, 15]);
				translate([58, 0, 0])
					cylinder(r = 2, h = 15);
			}
			translate([55, 3, 8])
				rotate( 90, [1, 0, 0])
					cylinder(r = 2, h = 6);
		}
	}
	translate([-55, 0, -1])
		cylinder(r1=25, r2=15, h=13);
}