/*
 * Customizable Bottle Lamp Neck Adapter
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

// Bottle neck inner diameter (mm)
bottle_neck_inner_diameter = 18;

// Bottle neck outer diameter (mm)
bottle_neck_outer_diameter = 30;

// Adapter head height (mm)
adapter_head_height = 5;

// Adapter body height (mm)
adapter_body_height = 20;

// Threaded rod diameter (mm)
threaded_rod_diameter = 11;

/* [Hidden] */

$fn = 100;

difference()
{
	union()
	{
		cylinder(r = bottle_neck_outer_diameter / 2, h = adapter_head_height);
		translate([0, 0, adapter_head_height])
			cylinder(r = bottle_neck_inner_diameter / 2, h = adapter_body_height);
		for ( i = [0 : 18] )
			rotate( i * 360 / 18, [0, 0, 1])
				translate([bottle_neck_inner_diameter / 2 - bottle_neck_inner_diameter, 0, adapter_head_height])
					cylinder(r = 0.5, h = adapter_body_height);
	}
	cylinder(r = threaded_rod_diameter / 2, h = adapter_head_height + adapter_body_height);
}

