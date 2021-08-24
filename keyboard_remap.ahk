; Made by r4v10l1

global enabled := true

status_x = 1
status_y = 40
status_size = 12 ; Font size
status_font = Courier New ; Leave blank for default

drawString(status_x, status_y, "[+] Custom keys on", 0x00ff00, status_size, status_font, 008800)
Menu, Tray, Icon, , , 1

w::Up
s::Down
a::Left
d::Right
Space::z
e::x

F3::
    Suspend
    enabled := !enabled
    if (enabled = true) {
        drawString(status_x, status_y, "[+] Custom keys on", 0x00ff00, status_size, status_font, 008800)
    } else {
        drawString(status_x, status_y, "[-] Custom keys off", 0xff0000, status_size, status_font, 880000)
    }
    return

F4::
    ExitApp
    return

drawString(x, y, string, color, size, Font, background)
{
    Gui, 2:destroy
    Gui, 2: -Caption +E0x80000 +LastFound +OwnDialogs +Owner +AlwaysOnTop +E0x20
    Gui, 2:Color, c%background%
    Gui, 2:Font, s%size% q1 c%color%, %Font%
    gui, 2:margin,, 0
    gui, 2:add, text,, %string%
    Gui, 2:Show, y%Y% x%X% NoActivate, ch
    WinSet, TransColor, c%background% 255
}
