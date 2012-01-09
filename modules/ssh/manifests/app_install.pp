
# This installs ssh with customized config file (user can check and modify ssh_config)
# The apps names are selected based on rpm repositories (verify and change names according to OS)
# User can append his own customised apps...

class ssh::install {
	package { $ssh::params::ssh_packagename:
	ensure => installed,
	}
}

