if $operatingsystemmajrelease == '7' { 
warning (' aquest node es un centOS 7 i hi ha manifests que no rulen.')
file {"/root/zz":
	mode => 644,
	owner => root,
	group => root,
	ensure => present,
	content => "aquest node es un centOS 7",
}
}
else {
# do whatever
file { "/root/zzz":
    mode   => 644,
    owner  => root,
    group  => root,
    ensure => present,
    content => "aquest node es un  $operatingsystem"
}
}


