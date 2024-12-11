ross()
{
	source /opt/ros/jazzy/setup.zsh

	source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.zsh
	eval "$(register-python-argcomplete ros2)"

	# for creating a new .zcompdump after source
	rm $ZDOTDIR/.zcompdump
}

ross-ws()
{
	[[ -n "$ROS_DISTRO" ]] || ross || return 1

	ws_install="$HOME/code/ros_ws/install/local_setup.zsh"
	[[ ! -f $ws_install ]] && echo "$ws_install is not the ROS2 workspace" &&
		return 1
	source "$ws_install"
}

ross-cwd()
{
	[[ -n "$ROS_DISTRO" ]] || ross || return 1

	cwd_install="./install/local_setup.zsh"
	[[ ! -f $cwd_install ]] && echo "Not in a ROS2 workspace" && return 1
	source "$cwd_install"
}