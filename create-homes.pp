# crear els homes dels usuaris del nis
# si no existeixen
exec { "create_homes":
    command => "/root/create-homes-nis.sh 2>/root/create-homes.err",
}

# copiem l'script 
file { "/root/create-homes-nis.sh":
    mode   => 755,
    owner  => root,
    group  => root,
    ensure => present,
    source => "puppet:///modules/create_homes/create-homes-nis.sh",
}

