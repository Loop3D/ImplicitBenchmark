I have provided three implicit fields based on the three 3d regularization operators proposed in Irakarama et el (2018, RING Meeting).
The three implicit fields were obtained using the following SIGMA commands (with no parameters other than input data):
 
1. S2Go_3dFDSIS10A8OSystem_gpu: produced result_s10 in 14 seconds
2. S2Go_3dFDSIS12A8OSystem_gpu: produced result_s12 in 17 seconds
3. S2Go_3dFDSIS13A8OSystem_gpu: produces result_s13 in 16 seconds

The computations were performed on a machine equiped with a 3.5 GHz core and a Quadro M4000 GPU.

The script used to compute these results can be found in scripts/fdsi/script_fdi.sh
