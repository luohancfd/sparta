# test the various input scripts which work with custom attributes
# assumes spa_mpi executable is in this dir

spa_mpi < in.custom.cube.clip
mv log.sparta log.mpi_1.custom.cube.clip
mpirun -np 4 spa_mpi < in.custom.cube.clip
mv log.sparta log.mpi_4.custom.cube.clip

spa_mpi < in.custom.cube.read
mv log.sparta log.mpi_1.custom.cube.read
spa_mpi < in.custom.cube.read.restart
mv log.sparta log.mpi_1.custom.cube.read.restart

mpirun -np 4 spa_mpi < in.custom.cube.read
mv log.sparta log.mpi_4.custom.cube.read
mpirun -np 4 spa_mpi < in.custom.cube.read.restart
mv log.sparta log.mpi_4.custom.cube.read.restart

spa_mpi < in.custom.cube.set
mv log.sparta log.mpi_1.custom.cube.set
spa_mpi < in.custom.cube.set.restart
mv log.sparta log.mpi_1.custom.cube.set.restart

mpirun -np 4 spa_mpi < in.custom.cube.set
mv log.sparta log.mpi_4.custom.cube.set
mpirun -np 4 spa_mpi < in.custom.cube.set.restart
mv log.sparta log.mpi_4.custom.cube.set.restart

spa_mpi < in.custom.spiky.set
mv log.sparta log.mpi_1.custom.spiky.set
mpirun -np 4 spa_mpi < in.custom.spiky.set
mv log.sparta log.mpi_4.custom.spiky.set

spa_mpi < in.custom.step.clip
mv log.sparta log.mpi_1.custom.step.clip
mpirun -np 4 spa_mpi < in.custom.step.clip
mv log.sparta log.mpi_4.custom.step.clip

spa_mpi < in.custom.step.read
mv log.sparta log.mpi_1.custom.step.read
spa_mpi < in.custom.step.read.restart
mv log.sparta log.mpi_1.custom.step.read.restart

mpirun -np 4 spa_mpi < in.custom.step.read
mv log.sparta log.mpi_4.custom.step.read
mpirun -np 4 spa_mpi < in.custom.step.read.restart
mv log.sparta log.mpi_4.custom.step.read.restart

spa_mpi < in.custom.step.set
mv log.sparta log.mpi_1.custom.step.set
spa_mpi < in.custom.step.set.restart
mv log.sparta log.mpi_1.custom.step.set.restart

mpirun -np 4 spa_mpi < in.custom.step.set
mv log.sparta log.mpi_4.custom.step.set
mpirun -np 4 spa_mpi < in.custom.step.set.restart
mv log.sparta log.mpi_4.custom.step.set.restart

spa_mpi < in.custom.step.temp.read
mv log.sparta log.mpi_1.custom.step.temp.read
mpirun -np 4 spa_mpi < in.custom.step.temp.read
mv log.sparta log.mpi_4.custom.step.temp.read

spa_mpi < in.custom.step.temp.remove
mv log.sparta log.mpi_1.custom.step.temp.remove
mpirun -np 4 spa_mpi < in.custom.step.temp.remove
mv log.sparta log.mpi_4.custom.step.temp.remove

spa_mpi < in.custom.step.temp.variable
mv log.sparta log.mpi_1.custom.step.temp.variable
mpirun -np 4 spa_mpi < in.custom.step.temp.variable
mv log.sparta log.mpi_4.custom.step.temp.variable

