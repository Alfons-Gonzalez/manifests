# afegir els repos
if $operatingsystemmajrelease == '6' {

exec { "add_repo_epel":
    command => "/bin/rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm",
}
exec { "add_repo_rpmfusion":
     command => "/bin/rpm -Uvh http://download1.rpmfusion.org/free/el/updates/6/i386/rpmfusion-free-release-6-1.noarch.rpm",
}
exec { "add_repo_rpmfusion_nonfree":
     command => "/bin/rpm -Uvh http://download1.rpmfusion.org/nonfree/el/updates/6/i386/rpmfusion-nonfree-release-6-1.noarch.rpm",
}
exec { "add_repo_adobe":
     command => "/bin/rpm -Uvh http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm",
}
}
elsif $operatingsystemmajrelease == '7' {
exec { "add_repo_epel":
    command => "/bin/yum install epel-release -y",
}
exec  { "add_repo_adobe":
     command => "/bin/rpm -Uvh http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm",
}

}
else {
file {"/root/whatisthat":
	mode => 644,
	owner => root,
	group => root,
	ensure => present,
	content => "aquest node es un $operatingsystem $operatingsystemrelease",
}
}

