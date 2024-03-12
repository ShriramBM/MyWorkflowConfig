if status is-interactive
    # Commands to run in interactive sessions can go here
	set -U fish_user_paths /usr/local/go/bin $fish_user_paths
	
	# Cargo Path setup to access to from anywhere	
	set -x PATH $HOME/.cargo/bin $PATH

	# remove backup
	function rm
		mv --backup=numbered --target-directory=$HOME/.local/share/Trash/files $argv
	end



end
