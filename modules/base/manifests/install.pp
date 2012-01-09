
# This installs frequently used install by user
# The install names are selected based on rpm repositories (verify and change names according to OS)
# User can append his own customised install...

class install::yum-presto {
	package { "yum-presto":
	ensure => present,	
	}
}

class install::yum-fastestmirror {
	package { "yum-fastestmirror":
	ensure => present,	
	}
}

class install::yum-security {
	package { "yum-security":
	ensure => present,	
	}
}

class install::screen {
	package { "screen":
	ensure => present,
	}
}

class install::wine {
	package { "wine":
	ensure => present,
	}
}


