# defaults only

# afegim el nis a passwd,shadow i group
class { 'nsswitch':
  passwd => ['files','nis'],
  shadow => ['files','nis'],
  group => ['files','nis']
}

