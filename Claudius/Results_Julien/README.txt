Two results
  cube_CoarseRes.xyz with the asked resolution
  i.e. 
    Box: 
      Origin: 548800 7816600 -8400
      Maximum: 552500 7822000 -11010
    Suggested resolution: 100m x 100m x -90m (grid size 38 x 55 x 30)
  
  cube_FineRes.xyz with a finer resolution. 
    Box:
      Origin: 548800 7816600 -8400
      Maximum: 552500 7822000 -11010
    Suggested resolution used for computation (grid size 38 x 55 x 30)
    Finer resolution used for visualization (grid size 76 x 110 x 60)
    This is to show that an implicit function computed on a same grid can fit better the structures when visualized with a finer grid
    
    
Details in Console_CoarseRes.txt and Console_FineRes.txt
  Tehre, you will find all the details about computation time and parameter values (weights etc..)
  
Important note:
  Parts of my code are now parallel
  It is still very basic... => I just added a few "#pragma omp parallel for" there and there
  I know I don't use the full potential of my computer, but here are its characteristics:
    Proc Intel(R) Xeon(R) E-2176M CPU @ 2.70 GHz 2.71 GHz
    RAM  32.0GB
    Used threads (OMP): 4