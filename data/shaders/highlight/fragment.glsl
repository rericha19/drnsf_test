//
// DRNSF - An unofficial Crash Bandicoot level editor
// Copyright (C) 2017-2020  DRNSF contributors
//
// See the AUTHORS.md file for more details.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

uniform isampler2D u_MarkingTexture;
uniform ivec2 u_Marking;

out vec4 f_Color;

void main()
{
    if (texelFetch(u_MarkingTexture, ivec2(gl_FragCoord.xy), 0).xy != u_Marking)
        discard;

    f_Color = vec4(1.0, 0.5, 0.0, 0.8);
}
