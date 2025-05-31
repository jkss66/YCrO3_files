#!/bin/bash


mpirun.openmpi -np 16 pw.x < scf_unperturbed.in | tee scf_unperturbed.out
mpirun.openmpi -np 16 pw.x < nscf_unperturbed.in | tee nscf_unperturbed.out
wannier_ham.x <hamilt_unperturbed.in |tee hamilt_unperturbed.out

mpirun.openmpi -np 16 pw.x < scf_B3g3_11p9mod.in | tee scf_B3g3_11p9mod.out
mpirun.openmpi -np 16 pw.x < nscf_B3g3_11p9mod.in | tee nscf_B3g3_11p9mod.out
wannier_ham.x <hamilt_B3g3_11p9mod.in |tee hamilt_B3g3_11p9mod.out


echo "DONE"

