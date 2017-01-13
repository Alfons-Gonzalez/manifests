case $lab {

	'ibi': { $mynisserver = 'bradbury.prib.upf.edu' $mynisdomain = 'ibi' }

	'cgl': { $mynisserver = 'wilde.prib.upf.edu' $mynisdomain = 'cgl' }

	'phi': { $mynisserver = 'carver.prib.upf.edu' $mynisdomain = 'phi' }

	'genomics': { $mynisserver = 'cortazar.prib.upf.edu' $mynisdomain = 'genomica' }
	'sbi': { $mynisserver = 'borges.prib.upf.edu' $mynisdomain = 'sbi' }
	
	'multiscale': { $mynisserver = 'orwell.prib.upf.edu' $mynisdomain = 'gianni-lab' }
	'cslab': { $mynisserver = 'asimov.prib.upf.edu' $mynisdomain = 'cslab' }
}
# puppet no permet reassignar variables. 
# defineixo una de nova amb el valor de l'anterior
$_my_nis_server = $mynisserver
$_my_nis_domain = $mynisdomain
class { "nisclient":
	domainname => $_my_nis_domain,
	server => $_my_nis_server,
}
