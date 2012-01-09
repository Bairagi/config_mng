
# This package is used to take OS as paramter
# This is used mainly when package name differs when different OS are used (rpm and debian)

class ssh::params {
	case $operatingsystem {

	/(RedHat|CentOS|Fedora)/: {
		$ssh_packagename = 'openssh-server'
		$ssh_configfile = '/etc/ssh/ssh_config'
		$ssh_servicename = 'sshd'
		}
	}
	
	/(Ubuntu|Debian)/: {
		$ssh_packagename = 'openssh-server'
		$ssh_configfile = '/etc/ssh/ssh_config'
		$ssh_servicename = 'sshd'
		}
	}
}

