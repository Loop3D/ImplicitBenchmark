## Hecho Sparse results 

This directory contains statistics for the various methods on the Hecho sparse data set. The statistics files were generated by GC in August 2020, using results imported into SKUA 2019 with the RINGToolKit plugin. 

CSV files were generated by Javascript macros in  [../../AnalysisMacros] 

In the scripts, the distance to the reference interpretation was first approximated by the difference between expected and reference scalar field value (imposed value or average interpolated value on each reference horizon), divided by the inverse of the scalar field norm. This approximation is only valid if the distance is small with regard to the gadient norm variation. Therefore, a more accurate distance estimation was obtained for each reference point using the closest iso-surface point. 

Property and object names in CSV files were designed to illustrate: 
 * The code name (e.g., GemPy, SurfE, LoopStructural, StructuralLab, etc.)
 * The method parameters when relevant (e.g., MQ or R3 for multiquadric or cubic basis function); 
 * The horizon name (H_\[1-9\]). Horizons ABCD were part of the data.  As not all approaches have the same scalar field values for the various horizons, the numerical values are also indicated. 
 
### Contents

* **ScalarFieldStats.csv** Contains statistics for all implicit properties on both on the reference Cartesian grid and tetrahedral mesh. All methods were natively evaluated at Cartesian grid nodes, except for StructuralLab which ran on the tetrahedral mesh. 

* **CriticalPoints.csv** Contains the number of critical points (minima, 1-saddles, 2-saddles and maxima) of each scalar field. For all scalar fields, these were computed on the scalar fields resampled on the tetrahedral mesh, so minor deviations may exist because of this resampling stage. 

* **OrientationStats.csv** Gives the statistics of the angle difference between the reference surface orientation and the gradient of the interpolated scalar fields. 

* **ScalarFieldForecastingValueStats.csv** Gives the statistics of the approximated distance to the reference horizon surfaces H1 to H9. This variable normalization explains why the average distance is not necessarily zero. For the SparseH[124579]Surf surfaces, the values reflect if the interpolation manages to predict the surface in the neighborhood of the sparse data points. For the "SparseH[34568]TestSurf" surfaces, the distance statistics reflect how far the average iso-surface is from the data unseen by the interpolation.

* **ScalarFieldImposedValuesValidationStats.csv** Gives the statistics of the approximated distance to the reference horizons, for methods where the value was imposed. 

* **ScalarFieldIncrementValuesValidationStats.csv** Gives the statistics of the approximated distance to the reference horizons, for methods where the value increment was interpolated. 

* **AccurateIsoDistance.csv** Gives the statistics of the distance for each reference object between each object point and the closest location on the corresponding iso-surface.


