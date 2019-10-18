/*
 * 3D Pixel Art - Heart 3
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

/* [Pixel Settings] */

// Pixel Length (X)
pixel_length = 1;

// Pixel Width (Y)
pixel_width = 1;

// Pixel Height (Z)
pixel_height = 1;

/* [Hidden] */

data=[[
     "  XXXX   XXXX",
     " XXXXXX XXXXXX",
     "XXXXXXXXXXXXXXX",
     "XXXXXXXXXXXXXXX",
     "XXXXXXXXXXXXXXX",
     "XXXXXXXXXXXXXXX",
     " XXXXXXXXXXXXX",
     " XXXXXXXXXXXXX",
     "  XXXXXXXXXXX",
     "   XXXXXXXXX",
     "    XXXXXXX",
     "     XXXXX",
     "      XXX",
     "       X"
     ],[
     "  XXXX   XXXX",
     " XX  XX XXXXXX",
     "XX XXXXXXXXXXXX",
     "XX XXXXXXXXXXXX",
     "XX XXXXXXXXXXXX",
     "XX XXXXXXXXXXXX",
     " XXXXXXXXXXXXX",
     " XXXXXXXXXXXXX",
     "  XXXXXXXXXXX",
     "   XXXXXXXXX",
     "    XXXXXXX",
     "     XXXXX",
     "      XXX",
     "       X"]];

for (z = [0 : len(data) - 1])
    for (y = [0 : len(data[z]) - 1])
        if (len(data[z][y]) > 0)
            for (x = [0 : len(data[z][y]) - 1])
                if (data[z][y][x] == "X")
                    translate([x * pixel_length, (len(data[z]) - 1 - y) * pixel_width, z * pixel_height])
                        cube([pixel_length, pixel_width, pixel_height]);