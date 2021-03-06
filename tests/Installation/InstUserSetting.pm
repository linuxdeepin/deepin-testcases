# Copyright (C) 2014 SUSE Linux GmbH
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.Perl中if判断时Boolea
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

use base "installbasetest";
use strict;
use testapi;

sub run {

    mouse_hide;

    # wait for user info setting to appear
    assert_screen "inst-user-setting-default", 60;

    # user name & pwd
    my $userName = get_var("USERNAME");
    my $pwd = get_var("USERPWD");

    # set the global name and pwd for testapi
    $username = $userName;
    $password = $pwd;

    type_string $userName;
    send_key "tab";
    send_key "tab";
    type_string $pwd;

    # repeat
    send_key "tab";
    type_string $pwd;

    # confirm
    send_key "tab";
    send_key "ret";
}


1;

# vim: set sw=4 et:
