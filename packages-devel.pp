# llista de paquets que volem instalats a les maquines
# potser hauriem de separar-ho en mes d'un manifest per a que sigui mes clar
# de l'estil paquets-dev.pp, paquets-eines-sys.pp,...

$paquets_devel = [ "gd", "arpack", "arpack-devel", "gcc", "fltk", "fftw" , "fftw-devel", "gsl", "gc", "gsl-devel", "gc-devel", "gl2ps-devel", "suitesparse", "hdf5-1.8.5.patch1", "compat-readline5", "tcl", "tk", "tk-devel", "tcl-devel", "libXp", "libXp-devel", "glib-devel", "compat-libstdc++-33", "compat-expat1", "qrupdate", "qrupdate-devel", "lapack", "lapack-devel", "blas", "blas-devel", "cairo-devel", "pango-devel", "gfortran", "qt5-qtbase", "qt5-qtdeclarative", "qt5-qtbase-gui", "qt5-qtlocation", "qt5-qtwebkit", "qt5-qtsensors", "qt5-qtxmlpatterns", "qt5-qtsvg" ]

package { $paquets_devel: ensure => "installed" }

