S2Go_DeleteRSFFile result_fdi_s1* #delete old results
S2Go_3dFDIOrthonormalVecs vecs=../Dips.csv ofile=orient_vecs.txt #convert dips to orientation vectors (two orthonormal vectors orthogonal to each dip vector)
S2Go_3dFDSIS10A8OSystem_gpu geom=../geom.hd val=../vals.txt orient=orient_vecs.txt faults=../fault.txt > result_fdi_s10a8.hd 
S2Go_3dFDSIS12A8OSystem_gpu geom=../geom.hd val=../vals.txt orient=orient_vecs.txt faults=../fault.txt > result_fdi_s12a8.hd 
S2Go_3dFDSIS13A8OSystem_gpu geom=../geom.hd val=../vals.txt orient=orient_vecs.txt faults=../fault.txt > result_fdi_s13a8.hd 
S2Go_SwapBytesFloat4 result_fdi_s1* #swap endianess of binary data... Gocad's voxets seems to use the oposite endianess of the machine it runs on

#Once the binary have been swapped, they can be loading into Gocad as raw data.
