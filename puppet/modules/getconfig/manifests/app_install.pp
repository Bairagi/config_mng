
# This installs frequently used apps by user
# The apps names are selected based on rpm repositories (verify and change names according to OS)
# User can append his own customised apps...

class apps::screen {
	package { "screen":
	ensure => present,
	}
}

class apps::ssh {
	package { "ssh":
	name => $operatingsystem ?
	/(Red Hat|CentOS|Fedora|Ubuntu|Debian)/ => "openssh-server",
	ensure => installed,
	include => aps::params
	}
}

class apps::wine {
	package { "wine":
	ensure => present,
	}
}

class apps::yum-presto {
	package { "yum-presto":
	ensure => present,	
	}
}


class apps::yum-fastestmirror {
	package { "yum-fastestmirror":
	ensure => present,	
	}
}


class apps::yum-security {
	package { "yum-security":
	ensure => present,	
	}
}

