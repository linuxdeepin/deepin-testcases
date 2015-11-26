use strict;
use base "softwarebasetest";
use testapi;
use deepinapi qw(start_program);

sub startup {
    start_program "font-viewer", "launcher-search-font-viewer";
    save_screenshot;
}
sub mainUI{
    assert_screen "font-viewer-main-default", 20;
    sleep 3;
}
sub exitFontViewer{
    send_key "alt-tab";
    sleep 3;
    send_key "alt-f4";
    assert_screen "desktop-default",5;
}
sub run{
    startup;
    mainUI;
    exitFontViewer;

}


1;

# vim: set sw=4 et:

