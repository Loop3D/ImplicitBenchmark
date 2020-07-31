No Dip/gradient has been used for the generation of the cubes
Reason: 
  Those Dips are tangential to the stratigraphy
  In my current code, I only use perpendicular information and translate it in two constraints:
    Either normal    to the stratigraphy (norm included     <=> equality of dx, dy, dz)
    or Perpendicular to the stratigraphy (norm not included <=> vector product)
  To involve field measured/interpreted dips, I transform the dips following this formula:
      given: x, y, z, dptr, dpaz ;
      dz = cos(dptr);
      hzOffSet = sin(dptr);
      dx = hzOffSet * sin(dpaz);
      dy = hzOffSet * cos(dpaz);
    This works with all my wellbore interpreted projects (and I have a few of them...).
  Problems:
    1. I don't think it is possible to get a perpendicular vector from only one tangential vector in 3D.
    2. I tried the above transformation. It did not create logical gradients compared to the stratigraphy.
    Note that I tried to use OrientX/OrientZ as dpaz/dptr, dptr/dpaz, and involve (or not) a radiant operator for each.
    I must be missing something, but it has already been time consuming for me...


You will find 3 Cubes in this folder 
  1. FullDataFullSample
    Set of data used          "Full"
    Computation resolution    [321, 21, 91]
    Visualization resolution  [321, 21, 91]
    Function  Generation      93.578  s
    Visu      Generation      12.327  s
    Total     Generation      105.905 s
  2. FullDataSparseSample
    Set of data used          "Full"
    Computation resolution    [ 81,  5, 22] (ref res / 4 env.)
    Visualization resolution  [321, 21, 91]
    Function  Generation      0.239   s
    Visu      Generation      23.478  s
    Total     Generation      23.717  s
  3. SparseDataSparseSample
    Set of data used          "Sparse"
    Computation resolution    [ 81,  5, 22]
    Visualization resolution  [321, 21, 91]
    Function  Generation      0.209   s
    Visu      Generation      23.071  s
    Total     Generation      23.280  s

The cubes are in .xyz format: X Y Z a (or P a, with P for point and a for attribute).

    
Details / Console outputs

Computation 1.
                PARAMETERS
Energy type     Bending MLS
Sample Points   Total = 613431 | [321, 21, 91]
Visu   Points   Total = 613431 | [321, 21, 91]
MLS Supports    [0.095, 0.0912, 0.0935222]
Data     weight 100
Energy   weight 1
Number H        9
Number D        3
Increments      Not used
Input iso-val   5.2 0 0.78 1.15 1.9 2.5 3.1 3.9 4.4

                COMPUTATION
initPoints ------------> Done: 0.108
findNeighbors begins
  initDiscontinuities ----------------> Done: 0.155
  findDataNeighborsSample ------------> Done: 0.806
  findGradientNeighborsSample --------> Done: 0
  findEvaluationNeighborsEvaluation --> Done: 0.233
  System size: [3681290, 613431]
findNeighbors done: 1.255
computeShapeFunctions begins
  computeData --------------> Done: 0.028
  computeGradient ----------> Done: 0
computeShapeFunctions Done: 0.03
computeSystem
  fillSystem ----------------> Done: 1.711
  solveSystem --------------->
                Eigen ConjugateGradient

#iterations:     8160
estimated error: 9.98602e-07
Done: 90.469
computeSystem Done: 92.181
========== Total time for computation ==========
                93.578

                VISUALIZATION
computeVisualization
  initDiscontinuitiesForVisu ---------> Done: 0.185
  findVisuNeighborsSample ------------> Done: 1.975
  computeVisuShapeFunction -----------> Done: 9.572
Done: 12.077
  printVisualization -----------------> Done: 0.248
========== Total time for visualization ==========
                12.327



=============================================================================================



Computation 2.
                PARAMETERS
Energy type     Bending MLS
Sample Points   Total = 8910 | [81, 5, 22]
Visu   Points   Total = 613431 | [321, 21, 91]
MLS Supports    [0.38, 0.456, 0.40081]
Data     weight 100
Energy   weight 1
Number H        9
Number D        3
Increments      Not used
Input iso-val   5.2 0 0.78 1.15 1.9 2.5 3.1 3.9 4.4

                COMPUTATION
initPoints ------------> Done: 0.001
findNeighbors begins
  initDiscontinuities ----------------> Done: 0.012
  findDataNeighborsSample ------------> Done: 0.027
  findGradientNeighborsSample --------> Done: 0
  findEvaluationNeighborsEvaluation --> Done: 0.018
  System size: [54164, 8910]
findNeighbors done: 0.062
computeShapeFunctions begins
  computeData --------------> Done: 0.024
  computeGradient ----------> Done: 0
computeShapeFunctions Done: 0.025
computeSystem
  fillSystem ----------------> Done: 0.026
  solveSystem --------------->
                Eigen ConjugateGradient

#iterations:     579
estimated error: 9.95023e-07
Done: 0.12
computeSystem Done: 0.148
========== Total time for computation ==========
                0.239

                VISUALIZATION
computeVisualization
  initDiscontinuitiesForVisu ---------> Done: 1.059
  findVisuNeighborsSample ------------> Done: 3.158
  computeVisuShapeFunction -----------> Done: 18.58
Done: 23.167
  printVisualization -----------------> Done: 0.309
========== Total time for visualization ==========
                23.478



=============================================================================================



Computation 3.
                PARAMETERS
Energy type     Bending MLS
Sample Points   Total = 8910 | [81, 5, 22]
Visu   Points   Total = 613431 | [321, 21, 91]
MLS Supports    [0.38, 0.456, 0.40081]
Data     weight 100
Energy   weight 1
Number H        6
Number D        3
Increments      Not used
Input iso-val   0 0.78 1.9 2.5 3.9 5.2

                COMPUTATION
initPoints ------------> Done: 0.001
findNeighbors begins
  initDiscontinuities ----------------> Done: 0.011
  findDataNeighborsSample ------------> Done: 0.021
  findGradientNeighborsSample --------> Done: 0
  findEvaluationNeighborsEvaluation --> Done: 0.019
  System size: [53821, 8910]
findNeighbors done: 0.056
computeShapeFunctions begins
  computeData --------------> Done: 0.013
  computeGradient ----------> Done: 0
computeShapeFunctions Done: 0.014
computeSystem
  fillSystem ----------------> Done: 0.026
  solveSystem --------------->
                Eigen ConjugateGradient

#iterations:     773
estimated error: 9.95805e-07
Done: 0.108
computeSystem Done: 0.135
========== Total time for computation ==========
                0.209

                VISUALIZATION
computeVisualization
  initDiscontinuitiesForVisu ---------> Done: 1.055
  findVisuNeighborsSample ------------> Done: 3.171
  computeVisuShapeFunction -----------> Done: 18.168
Done: 22.766
  printVisualization -----------------> Done: 0.304
========== Total time for visualization ==========
                23.071
