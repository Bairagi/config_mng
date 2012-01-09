
# change the <username> field with respective username

class configfile::VimCopy {
    file { "/home/<username>/.vimrc":
    ensure => present,
    owner => <username>,
    group => <username>,
    source => "puppet:///modules/getconfig/files/vimrc",
    mode  => 660,
    require => Class["configfile"]
    }
}


class configfile::BashCopy {
    file { "/home/<username>/.bashrc":
    ensure => present,
    owner => <username>,
    group => <username>,
    source => "puppet:///modules/getconfig/files/bashrc",
    mode  => 640,
    require => Class["configfile"]
    }
}


class configfile::SSHCopy {
	file 	{ $apps::params::ssh_configfile:
	ensure => present,
	owner => <username>,
	group => <username>,
	source => "puppet:///modules/getconfig/files/ssh_config",
	mode  => 640,
	require => Class["apps::ssh"]
	notyfy => Class["ssh::service"]
	}
}

