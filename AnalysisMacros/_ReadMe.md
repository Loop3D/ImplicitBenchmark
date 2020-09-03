# Implicit benchmark analysis macros

This directory contains code to analyze and evaluate the implicit benchmark results. 

## Contents

### Python notebooks

1. AnalyzeResults.ipynb is a Python3 Jupyter notebook to generate histograms from the quantiles in the results directory. It needs pandas, numpy and matplotlib.

### SKUA macros

1. ComputeOrientationErrorOnData.xml is a SKUA19 macro which computes the difference between the gradient of a set of scalar field on a Voxet and a vector field defined on a set of objects. The gradient is approximated by a first order centered finite difference scheme. The stats of the deciles of the differences are computed and output in csv format. The orientation is equal to the arc cosine of the dot product between the reference orientation and the scalar field gradient. As values only make sense modulo 180°, we subtract 180° to all values larger than 90°, so that all diferences are between -90° and 90°.  


2. ExtractIsoSurfacesFromData.xml is a SKUA19 macro which extracts the level set surfaces corresponding to data objects. For each data object, the average scalar field value is computed, and the iso-surface is extracted. It approximates the distance as the difference of scalar value divided by the local gradient norm. It also sets a surface DSI constraint for each surface to compute the distance more accurately. (TODO: automate this command in a future RINGToolKit realease)

3. ExtractIsoSurfacesFromValues.xml does the same for uses the known imposed values instead of estimating the average of the scalar field on the data points. 

4. CountSolidCriticalPoints computes the internal local minima, 1-saddles, 2-saddles and maxima of a piecewise linear scalar field (defined on a tetrahedral mesh). 