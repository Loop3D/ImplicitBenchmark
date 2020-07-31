Two results
  cube_FineResComput.xyz with the asked resolution (both for computation and visualization
  i.e. 
    Box: 
      Origin: -5 -5 -200
      Maximum: 305 405 -50
    Suggested resolution: 2m (grid size 156 x 206 x 76)
  
  cube_CoarseResComput.xyz with a coarser resolution for computation. 
    Box: 
      Origin: -5 -5 -200
      Maximum: 305 405 -50
    Suggested resolution used for visualization (grid size 156 x 206 x 76)
    Coarser resolution used for computation (grid size 39 x 51 x 19)   => Env. suggested res / 4
    This is to show that similar results can be obtained with a much coarser grid
    
    
Details in Console_CoarseResComput.txt and Console_FineResComput.txt
  There, you will find all the details about computation time and parameter values (weights etc..)
  
Important note:
  Parts of my code are now parallel
  It is still very basic... => I just added a few "#pragma omp parallel for" there and there
  I know I don't use the full potential of my computer, but here are its characteristics:
    Proc Intel(R) Xeon(R) E-2176M CPU @ 2.70 GHz 2.71 GHz
    RAM  32.0GB
    Used threads (OMP): 4