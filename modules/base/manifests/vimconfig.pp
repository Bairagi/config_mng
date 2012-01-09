# Nilesh Bairagi
# change the <username> field with respective username

class vimconfig::VimCopy {
    file { "/home/<username>/.vimrc":
    ensure => present,
    owner => <username>,
    group => <username>,
    source => "puppet:///modules/base/files/vimrc",
    mode  => 660,
    require => Class["configfiles"]
    }
}
