# docker-openmpi
# Compilation environment for openmpi and C.

Included : a mpi ping pong test you can try :
> cd /work
> mpicc mpi-ping.c

Good to make a singularity container ;)

> singularity create test_dock.img
> singularity import test_dock.img docker://sysmso/openmpi
> singularity exec test_dock.img mpicc /work/mpi-ping.c -o ./mpi-ping
> mpirun singularity exec test_dock.img ./mpi-ping

Enjoy :)
