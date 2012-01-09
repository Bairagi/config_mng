

# create a class with our module name

class configfile {
	# write your configuration here
	include configfile::VimCopy, configfile::BashCopy, configfile::SSHCopy								#configfile::GetAnyfile
}

class apps { 												#apps::GetAnyApp
	include apps::screen, apps::ssh, apps::wine, apps::yum-presto, apps::yum-fastestmirror, apps::yum-security
}
