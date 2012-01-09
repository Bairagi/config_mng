# Nilesh Bairagi


# Includes customized classes for config files (user can add/ remove classes - need based)

class configfiles {
	# Getting customized classes
	include vimconfig::VimCopy, bashconfig::BashCopy
}


# Includes customized packages (user can add/ remove individual classes - need based)

class apps {
	# including classes - installing desired packages
	include install::yum-presto, install::yum-fastestmirror, install::yum-security, install::screen
}
