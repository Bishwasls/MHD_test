# Here I will show some Standard MHD test results using Athena++ code developed at Princeton University.

The ideal MHD equations in conservative form can be written as
![](/images/mhd_conser.png)

where,

![](/images/conserv_var_mhd.png)

Here e = p/(\gamma - 1) + \rho (u^2 + v^2 + w^2) / 2 + (Bx^2 + By^2 + Bz^2)/8\pi is the total energy per unit volume, p0 = p + (Bx^2 + By^2 + Bz^2)/8\pi is the total pressure, p and \rho are pressure and density, \bm{v} = [u, v, w]T is the velocity vector, \bm{B} = [Bx, By Bz]T is the magnetic field vector and \gamma 
is the adiabatic index.


In 1D the ideal MHD equations can be written as 

![](/images/mhd_1d.png)

where

![](/images/conserv_1d.png)

and

![](/images/flux_1d.png)


It is clear that owing to the divergence-free condition, Bx = BxL = BxR = constant.
