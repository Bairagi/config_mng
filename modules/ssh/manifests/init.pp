# Nilesh Bairagi
# create a class with our module name

class ssh {
	include ssh::params, ssh::install, ssh::configfile, ssh::service
}
