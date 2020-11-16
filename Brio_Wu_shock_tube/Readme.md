This test is an MHD shocktube (Brio and Wu, 1988, Ideal MHD Riemann problem), where the right and left states are initalized to different values.

(i) The left state is initialized as

<img src="https://render.githubusercontent.com/render/math?math=(\rho, v_{x}, v_{y}, v_{z}, B_{y}, B_{z}, p)_{L} = [1, 0, 0, 0, 1, 0, 1] , -0.5 \lt x \leq 0">
and

(ii) the right state

<img src="https://render.githubusercontent.com/render/math?math=(\rho, v_x, v_y, v_z, B_y, B_z, p)_R = [0.125, 0, 0, 0, -1, 0, 0.1], 0 \lt x \lt 0.5">

(iii) In addition, <img src="https://render.githubusercontent.com/render/math?math=B_x = 0.75 \, \rm{and} \, \gamma = 2">.

The hydrodynamic portion of the initial conditions are the same as for the Sod shock tube problem.

This example tests whether the code can accurately represent the shocks, rarefactions, contact discontinuities, and the compound structures of MHD.
The test is now a standard for MHD codes.

Results computed with Athena++ using the "second order Roe solver" with 10,000 grid points. The plot shows from left
to right: a fast rarefaction (FR), a slow compound wave (CW), a contact discontinuity (CD), a slow shock (SS), and a fast rarefaction wave (FR). These results
can be compared to Fig. 2 in the reference.
<img src="./plots/rho.png" width="400">
<img src="./plots/p.png" width="400">
<img src="./plots/u.png" width="400">
<img src="./plots/v.png" width="400">
<img src="./plots/By.png" width="400">

The animation for the evolutions of primitive variables are shown below:
<img src="./plots/BW_st_rho.gif" width="400">
<img src="./plots/BW_st_p.gif" width="400">
<img src="./plots/BW_st_By.gif" width="400">
<img src="./plots/BW_st_u.gif" width="400">
<img src="./plots/BW_st_v.gif" width="400">



Reference:
https://www.sciencedirect.com/science/article/pii/0021999188901209?via%3Dihub
http://www.csun.edu/~jb715473/examples/mhd1d.htm (detailed description)
