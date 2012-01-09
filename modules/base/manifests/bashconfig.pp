
# change the <username> field with respective username

class bashconfig::BashCopy {
    file { "/home/<username>/.bashrc":
    ensure => present,
    owner => <username>,
    group => <username>,
    source => "puppet:///modules/base/files/bashrc",
    mode  => 640,
    require => Class["configfiles"]
    }
}


