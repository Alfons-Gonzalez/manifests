case $lab {

	'genomics' : {
		printer { "laser-gen":
	    	ensure      => present,
    		uri         => "ipp://gutenberg.prib.upf.edu/printers/laser-gen",
    		description => "HP LaserJet 42",
    		location    => "4.86",
    		ppd	    => "/root/laser-gen.ppd",
    		shared      => false, 
    		enabled     => true, 
    		options     => { media => 'A4' }, 
    		ppd_options => { 'HPOption_Duplexer' => 'True' }, 
		}
		file { "/root/laser-gen.ppd":
			mode   => 644,
    			owner  => root,
			group  => root,
			ensure => present,
			source => "puppet:///modules/ppd/laser-gen.ppd"
		}

	}
}
	
