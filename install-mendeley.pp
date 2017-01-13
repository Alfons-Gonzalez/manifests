# check os
if $operatingsystemmajrelease == '7' { 
warning (' aquest node es un centOS 7 i hi ha manifests que no rulen.')
file {"/root/no-mendeley":
	mode => 644,
	owner => root,
	group => root,
	ensure => present,
	content => "aquest node es un centOS 7",
}
}
else {
exec { "install-mendeley":
    command => "/root/install-mendeley.sh 2>/root/install-mendeley.err",
}

# copiem l'script 
file { "/root/install-mendeley.sh":
    mode   => 755,
    owner  => root,
    group  => root,
    ensure => present,
    source => "puppet:///modules/mendeley/install-mendeley.sh",
}
# copiem el fitxer del mendeley
file { "/root/mendeleydesktop-1.17-dev5-linux-x86_64.tar.bz2":
    mode   => 755,
    owner  => root,
    group  => root,
    ensure => present,
    source => "puppet:///modules/mendeley/mendeleydesktop-1.17-dev5-linux-x86_64.tar.bz2",
}
}
