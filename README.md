# docker-openmpi
## Compilation environment for openmpi and C

Included : a mpi ping pong test you can try :
```
cd /data
mpicc mpi-ping.c
```
Good to make a singularity or charlie-cloud container ;)
```
singularity create test_dock.img
singularity import test_dock.img docker://sysmso/openmpi
singularity exec test_dock.img mpicc /data/mpi-ping.c -o ./mpi-ping
mpirun singularity exec test_dock.img ./mpi-ping
```
Charlie-cloud
```
ch-docker2tar sysmso/docker-openmpi DIRECTORY
ch-tar2dir sysmso.docker-openmpi.tar.gz DIRECTORY
ch-run DIRECTORY/sysmso.docker-openmpi/ -w -- mpicc /data/mpi-ping.c -o /data/ping
ch-run sysmso.docker-openmpi/ mpirun /data/ping
```

Enjoy :)
