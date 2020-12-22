/*
 * Starman the Christmas Tree Topper
 * Copyright (c) 2020 Anar Software LLC. < http://anars.com >
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

// Pixel Length in mm (X)
pixel_length = 10;

// Pixel Width in mm (Y)
pixel_width = 10;

// Pixel Height in mm (Z)
pixel_height = 10;

/* [Hidden] */

data=[[
     "",
     "       XX",
     "       XX",
     "      XXXX",
     "      XXXX",
     "     XXXXXX",
     " XXXXX XX XXXXX",
     "  XXXX XX XXXX",
     "   XXX XX XXX",
     "    XXXXXXXX",
     "   XXXXXXXXXX",
     "   XXXXXXXXXX",
     "  XXXXX  XXXXX",
     "  XXX      XXX",
     " XX          XX",
     ""
     ],[
     "       XX",
     "      XXXX",
     "      XXXX",
     "     XXXXXX",
     "     XXXXXX",
     "XXXXXXXXXXXXXXXX",
     "XXXXXXXXXXXXXXXX",
     " XXXXXXXXXXXXXX",
     "  XXXXXXXXXXXX",
     "   XXXX  XXXX",
     "  XXXXX  XXXXX",
     "  XXXXX  XXXXX",
     " XXXXXX  XXXXXX",
     " XXXXXX  XXXXXX",
     "XXXXX      XXXXX",
     "XXX          XXX",
     ],[
     "",
     "       XX",
     "       XX",
     "      XXXX",
     "      XXXX",
     "     XXXXXX",
     " XXXXX XX XXXXX",
     "  XXXX XX XXXX",
     "   XXX XX XXX",
     "    XXXXXXXX",
     "   XXXXXXXXXX",
     "   XXXXXXXXXX",
     "  XXXXX  XXXXX",
     "  XXX      XXX",
     " XX          XX",
     ""
     ]];     

for (z = [0 : len(data) - 1])
    for (y = [0 : len(data[z]) - 1])
        if (len(data[z][y]) > 0)
            for (x = [0 : len(data[z][y]) - 1])
                if (data[z][y][x] == "X")
                    translate([x * pixel_length, (len(data[z]) - 1 - y) * pixel_width, z * pixel_height])
                        if (z == 1) {
                            color("#000000")
                            cube([pixel_length, pixel_width, pixel_height]);
                        }
                        else {
                            color("#FFFF00")
                            cube([pixel_length, pixel_width, pixel_height]);
                        }