# Nilesh Bairagi

# This installs frequently used packages by user
# The install names are selected based on rpm repositories (verify and change names according to OS)
# User can append his own customised install...

class apps {
	package { "yum-fastestmirror":
	ensure => present,	
	}

	package { "yum-security":
	ensure => present,	
	}

	package { "screen":
	ensure => present,
	}
	
	package { "htop":
	ensure => present,
	}
}

