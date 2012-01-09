
# This installs frequently used install by user
# The install names are selected based on rpm repositories (verify and change names according to OS)
# User can append his own customised install...

class apps::wine {
	package { "wine":
	ensure => present,	
	}
}

