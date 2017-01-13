# NFS
#
case $lab {

	'ibi' : {
		$nfs_mount = { 
       		device => "epsilon:/soft/64/SL6.4",
        	fstype => "nfs",
        	ensure => "mounted",
        	options => "defaults,vers=3",
        	atboot => true,
        	}
		$data = {
		'/ibi/users' => {
			device => "alfa:/ibi/users",
			},
		'/backup' => {
			device => "pandora:/ibi/users",
			},
		'/db' => {
			device => "epsilon:/db",
			},
		'/soft' => {
			device => "epsilon:/soft/64/SL6.4",
			}
		}
		create_resources('mount', $data, $nfs_mount)
		# previament hem hagut d'assegurar que els punts de muntatge
		# existien i si no crear-los
		file {
		['/ibi', '/ibi/users', '/backup', '/db', '/soft']:
        		ensure => directory,
        	}
	}
	'cgl': {
                $nfs_mount = {
                device => "epsilon:/soft/64/SL6.4",
                fstype => "nfs",
                ensure => "mounted",
                options => "defaults",
                atboot => true,
                }
                $data = {
                '/cgl/users' => {
                        device => "beta:/cgl/users",
                        },
		'/cgl/db' => {
			device => "beta:/cgl/db",
			},
		'/cgl/programs' => {
			device => "beta:/cgl/programs",
			},
                '/backup' => {
                        device => "pandora:/cgl/users",
                        },
                '/db' => {
                        device => "epsilon:/db",
                        },
                '/soft' => {
                        device => "epsilon:/soft/64/SL6.4",
                        }
                }
                create_resources('mount', $data, $nfs_mount)
                # previament hem hagut d'assegurar que els punts de muntatge
                # existien i si no crear-los
                file {
                ['/cgl', '/cgl/users', '/cgl/db', '/cgl/programs', '/backup', '/db', '/soft']:
                        ensure => directory,
                }
        }
	'sbi': {
                $nfs_mount = {
                device => "epsilon:/soft/64/SL6.4",
                fstype => "nfs",
                ensure => "mounted",
                options => "defaults",
                atboot => true,
                }
                $data = {
                '/sbi/users' => {
                        device => "beta:/sbi/users",
                        },
                '/backup' => {
                        device => "pandora:/sbi/users",
                        },
                '/db' => {
                        device => "epsilon:/db",
                        },
                '/soft' => {
                        device => "epsilon:/soft/64/SL6.4",
                        }
                }
                create_resources('mount', $data, $nfs_mount)
                # previament hem hagut d'assegurar que els punts de muntatge
                # existien i si no crear-los
                file {
                ['/sbi', '/sbi/users', '/backup', '/db', '/soft']:
                        ensure => directory,
                }
        }
	'genomics': {
                $nfs_mount = {
                device => "epsilon:/soft/64/SL6.4",
                fstype => "nfs",
                ensure => "mounted",
                options => "defaults",
                atboot => true,
                }
                $data = {
                '/genomics/users' => {
                        device => "beta:/genomics/users",
                        },
                '/backup' => {
                        device => "pandora:/genomics/users",
                        },
                '/db' => {
                        device => "epsilon:/db",
                        },
                '/soft' => {
                        device => "epsilon:/soft/64/SL6.4",
                        },
		'/projects_rg' => {
			device => "shannon:/projects_rg",
			},
		'/projects_fg' => {
                        device => "rabat:/projects_fg",
                        },
		'/projects_bg' => {
                        device => "rabat:/data",
                        },
		'/projects_eg' => {
                        device => "wallace:/projects_eg",
                        }
                }
                create_resources('mount', $data, $nfs_mount)
                # previament hem hagut d'assegurar que els punts de muntatge
                # existien i si no crear-los
                file {
                ['/genomics', '/genomics/users', '/backup', '/db', '/soft', '/projects_rg', '/projects_fg', '/projects_bg', '/projects_eg']:
                        ensure => directory,
                }
        }
	'multiscale': {
                $nfs_mount = {
                device => "epsilon:/soft/64/CentOS7",
                fstype => "nfs",
                ensure => "mounted",
                options => "defaults",
                atboot => true,
                }
                $data = {
                '/workspace1' => {
                        device => "workspace1:/workspace1",
                        },
                '/workspace2' => {
                        device => "workspace2:/workspace2",
                        },
		'/workspace3' => {
                        device => "workspace3:/workspace3",
                        },
                '/shared' => {
                        device => "workspace4:/shared",
                        },
		'/webdata' => {
			device => "capablanca:/vm/data/lasker/web",
			}
                }
                create_resources('mount', $data, $nfs_mount)
                # previament hem hagut d'assegurar que els punts de muntatge
                # existien i si no crear-los
                file {
                ['/workspace1', '/workspace2', '/workspace3', '/shared', '/webdata']:
                        ensure => directory,
                }
        } 
	'phi': {
                $nfs_mount = {
                device => "epsilon:/soft/64/SL6.4",
                fstype => "nfs",
                ensure => "mounted",
                options => "defaults",
                atboot => true,
                }
                $data = {
                '/soft' => {
                        device => "epsilon:/soft/64/SL6.4",
                        },
                '/db' => {
                        device => "epsilon:/db",
                        },
                '/backup' => {
                        device => "pandora:/cadd/users",
                        },
                '/cadd/users' => {
                        device => "alfa:/cadd/users",
                        },
                '/cadd/data' => {
                        device =>  "alfa:/cadd/data",
                        },
		'/cadd/opt' => {
                        device =>  "alfa:/cadd/opt",
                        },
		'/cadd2/users' => {
			device => "alfa:/cadd2/users",
			}
                }
                create_resources('mount', $data, $nfs_mount)
                # previament hem hagut d'assegurar que els punts de muntatge
                # existien i si no crear-los
                file {
                ['/cadd', '/cadd2', '/cadd/data', '/cadd/opt', '/cadd/users', '/cadd2/users', '/soft', '/db', '/backup']:
                        ensure => directory,
		}
	} 
	'cslab': {
                $nfs_mount = {
                device => "epsilon:/soft/64/SL6.4",
                fstype => "nfs",
                ensure => "mounted",
                options => "defaults",
                atboot => true,
                }
                $data = {
                '/soft' => {
                        device => "epsilon:/soft/64/SL6.4",
                        },
		'/data' => {
                        device => "pandora:/cslab/users",
                        }
		}
		create_resources('mount', $data, $nfs_mount)
                # previament hem hagut d'assegurar que els punts de muntatge
                # existien i si no crear-los
                file {
                ['/soft', '/data']:
                        ensure => directory,
                }
        }
# END CASE
}
