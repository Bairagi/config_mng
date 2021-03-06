
# This will configure ssh service based on ssh service name based on OS

class ssh::service {
	service { $ssh::params::ssh_servicename:
		ensure => running,
		hasstatus => true,
		hasresstart => true,
		enable => true,
		require => Class["ssh::install"],
		notify => Class["ssh::configfile"],
	}
}

