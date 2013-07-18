/*
 * Customizable Hookah Mouth Tip
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

// Has lip bubble
has_lip_bubble = true;  // [true, false] 

// Torso height of the lip bubble (mm)
lip_bubble_height = 2;

// Diameter of the lip bubble (mm)
lip_bubble_diameter = 11;

// Total height of the mount tip (mm)
total_month_tip_height = 38;

// Hose side outer diameter (mm)
hose_side_outer_diameter = 5;

// Hose side inner diameter (mm)
hose_side_inner_diameter = 3;

// Mouth side outer diameter (mm)
mouth_side_outer_diameter = 8;

// Mouth side inner diameter (mm)
mouth_side_inner_diameter = 7;

/* [Hidden] */

$fn = 50;

difference()
{
	union()
	{
		if (has_lip_bubble == true)
		{
			hull()
			{
				translate([0, 0, lip_bubble_height])
				sphere(lip_bubble_diameter / 2);
	   			sphere(lip_bubble_diameter / 2);
			}
			cylinder(r1 = mouth_side_outer_diameter / 2, r2 = hose_side_outer_diameter / 2, h = total_month_tip_height + (lip_bubble_diameter / -2));
		}
		else
		{
			cylinder(r1 = mouth_side_outer_diameter / 2, r2 = hose_side_outer_diameter / 2, h = total_month_tip_height);
		}
	}
	if (has_lip_bubble == true)
	{
		translate([0, 0, lip_bubble_diameter / - 2])
			cylinder(r1 = mouth_side_inner_diameter / 2, r2 = hose_side_inner_diameter / 2, h = total_month_tip_height + 2);
	}
	else
	{
		translate([0, 0, -1])
			cylinder(r1 = mouth_side_inner_diameter / 2, r2 = hose_side_inner_diameter / 2, h = total_month_tip_height + 2);
	}
}
