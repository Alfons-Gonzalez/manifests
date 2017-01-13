# instal-lacio driver hp
# ens assegurem que no estan els drivers de sistema
$paquets_hp_sistema = [ "hplip-common", "hplip-libs", "hpijs", "libsane-hpaio" ]
package { $paquets_hp_sistema: ensure => absent }
exec { "install driver":
    command => "yum localinstall --nogpgcheck /root/hplip-3.14.1_rhel-6.0.x86_64.rpm -y",
    path    => "/usr/bin/:/usr/local/bin/:/bin/",
    # path    => [ "/usr/local/bin/", "/bin/" ],  # alternative syntax
}

printer { "laser-bn":
    ensure      => present,
    uri         => "ipp://gutenberg.prib.upf.edu/printers/laser-bn",
    description => "HP LaserJet 600",
    location    => "4.83",
    ppd		=> "/root/laser-bn.ppd",
    shared      => false, 
    enabled     => true, 
    options     => { media => 'A4' }, 
    ppd_options => { 'HPOption_Duplexer' => 'True' }, 
}
printer { "laser-color":
    ensure      => present,
    uri         => "ipp://gutenberg.prib.upf.edu/printers/laser-color",
    description => "HP Color LaserJet CP3525",
    location    => "Secretaria",
    ppd         => "/root/laser-color.ppd",
    shared      => false,
    enabled     => true,
    options     => { media => 'A4' },
    ppd_options => { 'HPOption_Duplexer' => 'True' },
}
service { "cups":
  ensure => "running",
}
# copiem els ppd
file { "/root/laser-bn.ppd":
    mode   => 644,
    owner  => root,
    group  => root,
    ensure => present,
    source => "puppet:///modules/grib-printers/laser-bn.ppd"
}
file { "/root/laser-color.ppd":
    mode   => 644,
    owner  => root,
    group  => root,
    ensure => present,
    source => "puppet:///modules/grib-printers/laser-color.ppd"
}
file { "/root/hplip-3.14.1_rhel-6.0.x86_64.rpm":
    mode   => 644,
    owner  => root,
    group  => root,
    ensure => present,
    source => "puppet:///modules/grib-printers/hplip-3.14.1_rhel-6.0.x86_64.rpm"
}
