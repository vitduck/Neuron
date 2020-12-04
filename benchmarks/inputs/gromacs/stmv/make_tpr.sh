gmx_mpi            \
    grompp         \
    -f pme_nvt.mdp \
    -p topol.top   \
    -c conf.gro    \
    -o stmv.tpr
