use base "softwarebasetest";
use strict;
use testapi;
use deepinapi qw(check_app_open);

sub step1 {
	mouse_set 100,100;
	if (check_screen "fashion-dock-blank",60){
		assert_and_click "fashion-dock-blank","right";
		assert_and_click "intelligent-hide-menu";
		sleep 2;
		mouse_set 100,100;
		assert_screen "dock-fashion-mode-default", 3;	
	}
	
}

sub step2 {
	check_app_open "google-fashion","google-main-default";
	assert_and_click "google-maximize-btn";
	assert_screen "google-maximize",60;
}

sub step3{
	assert_and_click "google-minimize-btn";
	assert_screen "dock-fahion-mode-google-icon",3;
}

sub teardown{
	send_key "alt-f4";
	assert_screen "dock-fashion-mode-default", 10;
	assert_and_click "fashion-dock-blank","right";
	assert_and_click "always-show-menu";
	assert_screen "dock-fashion-mode-default",60;
}

sub run {
	step1;
	step2;
	step3;
	teardown;
}

1;

# vim: set sw=4 et: