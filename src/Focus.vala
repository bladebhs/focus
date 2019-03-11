/*
* Copyright (c) 2019 Vladislav Isakov (https://bladebhs.github.io)
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Vladislav Isakov <bladebhs@gmail.com>
*/

using Gtk;
using Granite;

namespace Focus {

    public class Focus : Gtk.Application {

        public Focus () {
            Object (
                application_id: "com.github.bladebhs.focus",
                flags: ApplicationFlags.FLAGS_NONE
            );
        }

        protected override void activate () {
            var window = new Gtk.ApplicationWindow (this);
            window.title = "Focus";
            window.window_position = Gtk.WindowPosition.CENTER;
            window.set_default_size (800, 400);
            window.show_all ();
        }

        public static int main (string[] args) {
            var app = new Focus ();
            return app.run (args);
        }
    }
}
