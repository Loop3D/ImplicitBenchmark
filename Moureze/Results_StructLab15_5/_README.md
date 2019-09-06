# Implicit benchmark data set - Moureze data set 

## Results obtained with StructuralLab version 15.5 

### Description

The implicit method is based on least-squares DSI described in Frank et al (2007) and Caumon et al (2013). 

I used the provided stratigraphic value for the horizons. 

I Used the default weight (1) for point contraints, with value 0 
(Eq. 5 in Caumon et al, 2013). 

The orientation data was used to constrain the scalar field gradient 
(both orientation and norm) (Eq. 9 in Caumon et al, 2013), with a default weight of 1.
As a result, the scalar field approximates the signed distance field to the surface. 

The chosen roughness is constant gradient (Eq. 8 in Caumon et al, 2013), with a
default weight of 0.1. No particular boundary treatment was made. 

The implicit scalar field and the reconstructed surface are provided in the 
Moureze_SLab15_5.so and MourezeSurf_SLab15_5.ts files, respectively

### Scripts 

This directory contains two scripts to reproduce the results: 
 * load.gsc: loads the initial data (relative paths from current working
   directory)
 * compute.gsc: Sets the constraints, interpolates and shows the iso-surfaces.  

