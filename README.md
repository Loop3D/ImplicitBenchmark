# ImplicitBenchmark
Data for the implicit structural modeling benchmark paper

This repository is designed to test various implicit structural modeling codes
on common data sets.
 
Each benchmark data set should be stored in a separate sub-directory 
having the following structure: 
 * `_ReadMe.md` file explaining the data set
 * Data points in .csv format. 
 * [optionally] a few screenshots of the data in png or jpg format
 * [Optionally] a `Result_` directory to be used as template for various teams

Please have a look at `_ReadMe.md` files in each subdirectory for examples. 

## To add results for a particular data set 
Please create a new subdirectory `Results_YourName` including : 
 * `_ReadMe.md` file explaining the directory content, the file formats, software version information, and a description about how results were obtained and parameters were chosen. 
 * [When possible] The scripts / codes so that others who have access to that software can reproduce the results.  
 * The 3D surfaces corresponding to the various horizons in the data set data points
 * The scalar field in a standard format (Cartesian grid or tetrahedral mesh).
 
