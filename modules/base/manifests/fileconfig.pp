
# This module copies root user (change username and path accordingly) config files
# User can add his own customized config files

class apps::fileconfig {
	file { "/home/<username>/.bashrc":
    	ensure => present,
    	owner => <username>,
    	group => <username>,
    	source => "puppet:///modules/base/files/bashrc",
    	mode  => 640,
    }
    
	file { "/home/<username>/.vimrc":
	    ensure => present,
	    owner => <username>,
	    group => <username>,
	    source => "puppet:///modules/base/files/vimrc",
	    mode  => 660,
    }

}
