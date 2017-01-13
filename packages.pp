# llista de paquets que volem instalats a les maquines
# potser hauriem de separar-ho en mes d'un manifest per a que sigui mes clar
# de l'estil paquets-dev.pp, paquets-eines-sys.pp,...

$paquets = [ "nethogs", "nload", "iftop",  "wget", "screen", "cups", "man", "xterm", "bind-utils", "at" , "tree", "mysql", "emacs", "kile", "tcsh", "thunderbird", "gimp", "flash-plugin", "openvpn", "NetworkManager-openvpn", "libyaml" ]

$toremove = [ "yum-autoupdate" ]

package { $paquets: ensure => "installed" }
package { $toremove: ensure => "absent" }
