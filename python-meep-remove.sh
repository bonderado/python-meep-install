# Set to _mpi if you used a mpi version, leave it empty if not
MPI=_mpi

# == Uninstall procedure == 
echo Removing locally compiled meep
sudo rm /usr/local/bin/meep-mpi
sudo rm /usr/local/include/meep.hpp
sudo rm /usr/local/include/meep/mympi.hpp
sudo rm /usr/local/include/meep/vec.hpp
sudo rm /usr/local/lib/libmeep${MPI}.a
sudo rm /usr/local/lib/libmeep${MPI}.la
sudo rm /usr/local/lib/libmeep${MPI}.so*
sudo rm /usr/local/lib/pkgconfig/meep${MPI}.pc
sudo rm /usr/local/share/meep/casimir.scm
sudo rm /usr/local/share/meep/meep-enums.scm
sudo rm /usr/local/share/meep/meep.scm
echo 'Removing locally compiled python-meep (works for python 2.7)...'
sudo rm /usr/local/lib/python2.7/dist-packages/_meep${MPI}.so
sudo rm /usr/local/lib/python2.7/dist-packages/meep${MPI}.py
sudo rm /usr/local/lib/python2.7/dist-packages/meep${MPI}.pyc
sudo rm /usr/local/lib/python2.7/dist-packages/python_meep-1.4.egg-info
pip uninstall weave
echo done.
