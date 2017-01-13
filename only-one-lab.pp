case $lab {

	'cslab' : {

		file {'exemple':
		path => '/tmp/exemple',
		mode => 0640,
		ensure => present,
		content => "Aquest manifest s'executa nomes a les ws de $lab",
		}
	}
}
	
