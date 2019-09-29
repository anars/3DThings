/*
 * Lonely 3D-Rex
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
difference() {
	linear_extrude(height = 3, center = false, $fn=100)
		polygon([[0,8],[0,14],[1,14],[1,12],[2,12],[2,11],[3,11],[3,10],[5,10],[5,11],[6,11],[6,12],[8,12],[8,13],[9,13],[9,14],[10,14],[10,21],[11,21],[11,22],[19,22],[19,21],[20,21],[20,16],[15,16],[15,15],[18,15],[18,14],[14,14],[14,12],[16,12],[16,10],[15,10],[15,11],[14,11],[14,8],[13,8],[13,6],[12,6],[12,5],[11,5],[11,1],[12,1],[12,0],[10,0],[10,3],[9,3],[9,4],[8,4],[8,3],[7,3],[7,2],[6,2],[6,1],[7,1],[7,0],[5,0],[5,4],[4,4],[4,5],[3,5],[3,6],[2,6],[2,7],[1,7],[1,8]]);
	union() {
		translate([12,19])
			cube([1,1,3]);
		translate([14,10, 1])
			cube([2,2,1]);
		translate([5,0, 1.5])
			cube([3,4,1.5]);
		translate([9,0, 0])
			cube([3,4,1.5]);
	}
}