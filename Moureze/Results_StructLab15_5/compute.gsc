AddMxTetraHorizonConstraint create_property_on_horizon "true" horizon "/gobj:Complex_Pts" on TSolid "/gobj:MourezeSolid4" property "Strati" value 0. weight 1.;
AddMxTetraHorizonConstraint create_property_on_horizon "true" horizon "/gobj:Complex_EW" on TSolid "/gobj:MourezeSolid4" property "Strati" value 0. weight 1.; 
AddMxTetraHorizonConstraint create_property_on_horizon "true" horizon
"/gobj:Complex_NS" on TSolid "/gobj:MourezeSolid4" property "Strati" value 0. weight 1.; 
AddMxTetraGradientCPCnstrLink controller "/gobj:Complex_Pts" controller_prop "/Complex_Pts/property:Orient" on TSolid "/gobj:MourezeSolid4" only_direction "false" property "Strati" weight 1.;
MxTetraInterpolateScalarFieldProperty fitting_factor 2. initialize_property_with_constant "true" mxdsi_error 1.e-7 mxdsi_iter -1 on TSolid "/gobj:MourezeSolid4" property "/Strati" value 0.; 
GRGGGraphicsCreateTSolidIsoSurface field 0 name "Complex" property "/MourezeSolid4/property:Strati" solid "/gobj:MourezeSolid4" value 0.;

