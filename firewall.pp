# ho apliquem als centOS 7, que funcionen diferent, amb firewalld
if $operatingsystemmajrelease == '7' {

   # For all CentOS 7
   exec { "firewalld command1":
	 command => "/usr/bin/firewall-cmd  --add-rich-rule='rule family=ipv4 source address=172.20.16.0/24 service name=ssh accept' --permanent",
   }
   exec { "firewalld command2":
	command => "/usr/bin/firewall-cmd --remove-service=ssh --permanent",
   }
   exec { "firewalld command3":
        command => "/usr/bin/firewall-cmd --remove-service=dhcpv6-client --permanent",
   }
   exec { "firewalld command4":
	command => "/usr/bin/firewall-cmd --reload",
   }

   # For each lab
   case $lab {

        'multiscale': {  
	    exec { "firewalld command5":
                 command => "/usr/bin/firewall-cmd  --zone=public --add-port=8888-9999/tcp --permanent",

            }
           exec { "firewalld command6":
                 command => "/usr/bin/firewall-cmd  --add-rich-rule='rule family=ipv4 source address=84.89.134.128/25 service name=ssh accept' --permanent",
            }
 

        }
   }

}
else {
# modifiquem iptables
# clear any existing rules 
# and make sure that only rules defined in Puppet exist on the machine
 resources { "firewall":
    purge => true
  }

# Default firewall rules
    firewall { '000 accept all icmp':
      proto   => 'icmp',
      action  => 'accept',
    }->
    firewall { '001 accept all to lo interface':
      proto   => 'all',
      iniface => 'lo',
      action  => 'accept',
    }->
    firewall { "002 reject local traffic not on loopback interface":
      iniface     => '! lo',
      proto       => 'all',
      destination => '127.0.0.1/8',
      action      => 'reject',
    }->
    firewall { '003 accept related established rules':
      proto   => 'all',
      state => ['RELATED', 'ESTABLISHED'],
      action  => 'accept',
    }->
    firewall { '100 allow ssh from our private network' :
	port => 22,
	proto => tcp,
	source => '172.20.16.0/24',
	action => accept,
    }->
    firewall { '101 allow ssh from our public network ':
	port => 22,
        proto => tcp,
        source => '84.89.134.128/25',
        action => accept,
    }->
    firewall { "999 drop all other requests":
	action => "drop",
    }
# end
}
