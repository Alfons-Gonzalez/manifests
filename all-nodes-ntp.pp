node default {
# NTP
class { "::ntp":
	servers    => [ 'cortazar.prib.upf.edu','borges.prib.upf.edu'],
	package_ensure => present,
	}
# END
}
