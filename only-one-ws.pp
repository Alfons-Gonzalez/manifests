node "scientific.prib.upf.edu" {
firewall { '200 allow mysql from our private network' :
	port => 3306,
	proto => tcp,
	source => '172.20.16.0/24',
	action => accept,
    }
}
