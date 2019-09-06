# Implicit benchmark data set - Hecho data set 

## Results obtained with StructuralLab version 15.5 

### Description

The implicit method is based on least-squares DSI described in Frank et al (2007) and Caumon et al (2013). 

I used the provided stratigraphic values for all the horizons and the default weight (1) 
for point contraints (Eq. 5 in Caumon et al, 2013). 

The orientation data was taken as isolines (Eq. 7 in Caumon et al, 2013), with a default weight of 1. 
Note that this is less informative than taking the normal vector. 

The chosen roughness is constant gradient (Eq. 8 in Caumon et al, 2013), with a
default weight of 0.1. No particular boundary treatment was made. 

Results for the sparse and full data sets are provided in the `Hecho_[Full,Sparse`].so` files. 
For each tetrahedral mesh, two properties are given: 
 * The `Strati_basic` property was obtained with the above procedure. 
 * The `Strati` property was obtained with a constant additional axial direction
   constraint (Massiot and Caumon, RING Meeting 2010) set to (0, 1, 0). 

### Scripts 

This directory contains four scripts to reproduce the results: 
 * load`_[Full,Sparse]`.gsc: loads the initial data (relative paths from current working
   directory)
 * compute`_[Full,Sparse]`.gsc: Sets the constraints, interpolates and shows the iso-surfaces.  

