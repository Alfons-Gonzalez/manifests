node "selene.prib.upf.edu" {
firewall { '300 allow all access from our private network' :
	proto => tcp,
	source => '172.20.16.0/24',
	action => accept,
    }->
firewall { '310 allow all access from our public network' :
        proto => tcp,
        source => '84.89.134.128/25',
        action => accept,
    }

}
