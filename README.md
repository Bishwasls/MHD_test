# Physics of some Standard MHD test results using Athena++ code.

The **ideal MHD equations** in *conservative* form can be written as

<img src="/images/mhd_conser.png" width="400">

where,

<img src="/images/conserv_var_mhd.png" width="800">

Here <img src="https://render.githubusercontent.com/render/math?math=e = p/(\gamma - 1) +%2B \rho (u^2 +%2B v^2 +%2B w^2) / 2 +%2B (Bx^2 +%2B By^2 +%2B Bz^2)/8\pi">
is the total energy per unit volume, <img src="https://render.githubusercontent.com/render/math?math=p0 = p + (Bx^2 + By^2 + Bz^2)/8\pi"> is the total pressure, p and <img src="https://render.githubusercontent.com/render/math?math=\rho"> are pressure and density, <img src="https://render.githubusercontent.com/render/math?math=\bm{v} = [u, v, w]T"> is the velocity vector, <img src="https://render.githubusercontent.com/render/math?math=\bm{B} = [Bx, By Bz]T"> is the magnetic field vector and <img src="https://render.githubusercontent.com/render/math?math=\gamma"> is the adiabatic index.


In **1D** the ideal MHD equations can be written as 

<img src="/images/mhd_1d.png" width="200">

where

<img src="/images/conserv_1d.png" width="400">

and

<img src="/images/flux_1d.png" width="500">

It is clear that owing to the divergence-free condition, Bx = BxL = BxR = constant.
