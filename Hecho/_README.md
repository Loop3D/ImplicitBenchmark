# Implicit benchmark data set - Hecho Folded turbidites (2.5D)

*Data set prepared in July 2019 by Guillaume.Caumon@univ-lorraine.fr, to who
questions should be addressed.*

## Contents

Two versions of the data are provided in the **Sparse** and **Full**
directories. The **Sparse** directory is a subset of the **Full** one, 
so you should load with either data set but not both of them. Each directory
contains: 
 
 * Horizon lines (H[1-9].csv). The Y column was obtained for 3D applications by
  sampling a value randomly. The Strati field contains possible scalar 
  field values rougly equal to the thicknesses from the top horizon **H1**. 
 * Faults are provided as curves (F[123]Line.csv) and surfaces, both in Autocad
  DXF format (F[123]Surf.dxf) and Gocad ASCII format (AllFaultSurfaces.ts) 
 * Dips.csv contain stratal traces and 2D normal vectors (both informations are
   equivalent in 2D but not in 3D. The Y coordinate of the points is obtained by 
   random sampling. Each stratal trace consists of one line segment which 
   has a unique `PART_ID`, which can be used as tangent constraint for 3D interpolation.
   To avoid redundancy, only one of each line extremities has 2D orientation values, 
   the other has no data values (-99999).

## Output

Please rename the `Results_` as `Results_YOURNAME` directory. The directory
contains an empty Voxet (Cartesian Grid) and an empty conformable
tetrahedral mesh, both in Gocad ASCII format.

### Scalar Field
Suggested size of the axis-aligned modeling box: 
Origin: 0 -0.5 0
Maximum: 16 0.5 4.5

Suggested resolution: 0.05m (grid size 321 x 21 x 91)

An empty Gocad Voxet is already in the results directory. You may write your values in binary format (float C 4-byte values), or ASCII format.  

### Surfaces 

Please use DXF, Gocad and/or .obj format. 

