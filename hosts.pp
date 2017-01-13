# manega les entrades de l'/etc/hosts

$afegir_host = {
	name => 'default.domain',
	ip => '192.168.10.1',
	host_aliases => 'default',
	ensure => present,
}

$data_host = {
	'gutenberg' => {
                name => 'gutenberg.prib.upf.edu',
                ip => '172.20.16.192',
                host_aliases => 'gutenberg',
        	},
	'pandora' => {
		name => 'pandora.prib.upf.edu',
		ip => '172.20.16.5',
        	host_aliases => 'pandora',	
		},
	'epsilon' => {
		name => 'espilon',
		ip => '172.20.16.24',	
		host_aliases => 'epsilon',
		},
	'beta'  => {
                name => 'beta',
                ip => '172.20.16.21',
                host_aliases => 'beta',
        	},
	'alfa'  => {
                name => 'alfa',
                ip => '172.20.16.20',
                host_aliases => 'alfa',
        	},
	'shannon' => {
		name => 'shannon',
		ip => '172.20.16.175',
		host_aliases => 'shannon',
		},
	'wallace' => {
                name => 'wallace.prib.upf.edu',
                ip => '172.20.16.11',
                host_aliases => 'wallace',
                },
	'bradbury' => {
                name => 'bradbury.prib.upf.edu',
                ip => '172.20.16.19',
                host_aliases => 'bradbury',
                },
	'carver' => {
                name => 'carver.prib.upf.edu',
                ip => '172.20.16.16',
                host_aliases => 'carver',
                },
	'cortazar' => {
                name => 'cortazar.prib.upf.edu',
                ip => '172.20.16.26',
                host_aliases => 'cortazar',
                },
	'borges' => {
                name => 'borges.prib.upf.edu',
                ip => '172.20.16.28',
                host_aliases => 'borges',
                },
	'wilde' => {
                name => 'wilde.prib.upf.edu',
                ip => '172.20.16.94',
                host_aliases => 'wilde',
                },
	'asimov' => {
                name => 'asimov.prib.upf.edu',
                ip => '172.20.16.200',
                host_aliases => 'asimov',
                }
}
create_resources('host', $data_host, $afegir_host)
