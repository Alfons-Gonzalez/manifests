cron { raid-status:
  command => "/sbin/mdadm --monitor --scan --oneshot --mail=miguelangel.sanchez@upf.edu,alfons.gonzalez@upf.edu",
  user    => root,
  hour    => [12, 0],
  minute  => 0
}

