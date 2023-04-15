# Implicit benchmark data set - Moureze, synthetic hydrothermal body. 

*Data set interpreted and prepared in July 2019 by Guillaume.Caumon@univ-lorraine.fr, 
to whom questions should be addressed.*

This data set is generated from a perturbed distance field to a set of fractures
above a basement surface. The surface is quite complex and has many features at
two main resolutions (one corresponding to the fractures and the other one to
the noise). It is sampled by two sets of cross section lines and a set of
points. 

## Contents
 
 * `Moureze_Points.csv` correspond are samples of the surface to reconstruct. 
 Their density decreases from south to north (the surface is clearly
 undersampled in the north). Some of the points bear
 orientation vectors representing the normal to the surface. 
 * `Sections_[EW,NS].csv` are sections lines. The field `PART_ID` is a unique 
 section identifier in each file. Please DO NOT use these values for 3D 
 applications even for parameter estimation to highlight extrapolation errors. 

All Data Files contain a Cutoff column, than contains a random number which may
be used to decimate the data set. For example, taking 20% of the data means 
using only the points whose cutoff is lower than 0.2

## Results

Please rename the `Results_` as `Results_YOURNAME` directory. The directory
contains an empty Voxet (Cartesian Grid) and an empty 
tetrahedral mesh conformable to faults (resolution 3m), both 
in Gocad ASCII format.

### Scalar Field
Suggested size of the axis-aligned modeling box: 
Origin: -5 -5 -200
Maximum: 305 405 -50

Suggested resolution: 2m (grid size 156 x 206 x 76)

An empty Gocad Voxet is already in the results directory. You may write your values in binary format (float C 4-byte values), or ASCII format.  

### Surfaces 

Please use DXF, Gocad and/or .obj format. 

