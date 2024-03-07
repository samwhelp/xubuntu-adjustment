#!/usr/bin/env bash

set -e


################################################################################
### Head: lxqt
##

lxqt_config_run_pre () {

	lxqt_service_stop


	return 0

}

lxqt_config_run_post () {

	lxqt_service_start


	return 0

}

lxqt_service_stop () {

	lxqt_service_stop_lxqt_globalkeysd

	lxqt_service_stop_lxqt_panel

	#lxqt_service_stop_pcmanfm_qt

	#lxqt_service_stop_xfconfd

	#lxqt_service_stop_xfsettingsd


	return 0

}

lxqt_service_stop_lxqt_globalkeysd () {

	if killall -9 lxqt-globalkeysd; then
		return 0
	fi


	return 0

}

lxqt_service_stop_lxqt_panel () {

	if killall -9 lxqt-panel; then
		return 0
	fi


	return 0

}

lxqt_service_stop_pcmanfm_qt () {

	if killall -9 pcmanfm-qt; then
		return 0
	fi


	return 0

}

lxqt_service_stop_xfconfd () {

	if killall -9 xfconfd; then
		return 0
	fi


	return 0

}

lxqt_service_stop_xfsettingsd () {

	if killall -9 xfsettingsd; then
		return 0
	fi


	return 0

}

lxqt_service_start () {


	return 0

}

lxqt_config_install () {

	echo
	echo "##"
	echo "## Config: lxqt"
	echo "##"
	echo


	lxqt_config_install_by_dir


	echo

}

lxqt_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

##
### Tail: lxqt
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	lxqt_config_run_pre

	lxqt_config_install

	lxqt_config_run_post

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
