# Implicit benchmark data set - Claudius carbonate build-ups, Carnarvon Basin, W Australia. 

## Results obtained with StructuralLab version 15.5 

### Description

The implicit method is based on least-squares DSI described in Frank et al (2007) and Caumon et al (2013). 

I used the provided stratigraphic value for the 4 horizons. 

I Used the default weight (1) for point contraints (Eq. 5 in Caumon et al, 2013). 

The orientation data was taken as direction only (i.e., not constraining the
norm (Eq. 6 in Caumon et al, 2013), with a default weight of 1.

The chosen roughness is constant gradient (Eq. 8 in Caumon et al, 2013), with a
default weight of 0.1. No particular boundary treatment was made. 

### Qualitative comments

The overall match to the data looks satisfactory. Extrapolation is dubious below
the D horizon (Five local minima are observed, generating five bubbles for the
isovalues in the range 345-348).


### Scripts 

This directory contains two scripts to reproduce the results: 
 * load.gsc: loads the initial data (relative paths from current working
   directory)
 * compute.gsc: Sets the constraints, interpolates and shows the iso-surfaces.  

