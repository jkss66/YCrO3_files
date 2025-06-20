# YCrO3_files
Details and files of YCrO3 simulation
These codes are run on Quantum Espresso version 6.7. 
(You can find the installation files here "https://www.quantum-espresso.org/download-page/". 
You will need the following libraries and packages - gfortran,python3,libatlas-base-dev, fftw3, ibverbs-providers, 
libblas3, libelpa4, libfabric1, libibverbs1, liblapack3, libnl-route-3-200, libpsm-infinipath1, librdmacm1,
mpi-default-bin, openmpi-bin, openmpi-common, scalapack-doc, openmpi-bin, openmpi-doc, libopenmpi-dev, exchanges.x(https://github.com/dkorotin/exchanges))

You can run the bash script to calculate the exchange interaction for the unperturbed and unperturbed system.
Type bash wannierham.sh in terminal to get the exchange interaction for unperturbed and perturbed systems (B3g3 mode for an amplitude of 11.9 pm).
