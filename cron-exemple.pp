case $lab {

	'cslab': {
		cron::daily {'poweroff':
			hour => 23,
			minute => 15,
			command => 'echo "vaig a dormir" > /tmp/bonanit',
		}
	}
}
# si volem apagar les maquines d'un lab substituim command per
# command => '/sbin/poweroff'
# i l'endema tornem a posar una comanda inofensiva al cron

