# treure una entrada de fstab per un lab
case $lab {

	'cslab' : {

		 mount { '/db':
  			device => "epsilon:/db",
  			fstype   => "nfs",
  			ensure => "absent",
		}
	}
}
