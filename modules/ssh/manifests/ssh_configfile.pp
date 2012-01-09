
# change the <username> field with respective username

class ssh::configfile {
	file 	{ $ssh::params::ssh_configfile:
	ensure => present,
	owner => root,
	group => root,
	source => "puppet:///modules/ssh/files/ssh_config",
	mode  => 640,
	require => Class["ssh::install"]
	notify => Class["ssh::service"]
	}
}

