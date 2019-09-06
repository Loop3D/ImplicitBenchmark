# Set Horizon Constraints 
AddMxTetraHorizonConstraint create_property_on_horizon "false" horizon "/gobj:HorizA" on TSolid "/gobj:Solid100_30" property "Strati" value 0. weight 1.;
AddMxTetraHorizonConstraint create_property_on_horizon "false" horizon "/gobj:HorizB" on TSolid "/gobj:Solid100_30" property "Strati" value 0. weight 1.;
AddMxTetraHorizonConstraint create_property_on_horizon "false" horizon "/gobj:HorizC" on TSolid "/gobj:Solid100_30" property "Strati" value 0. weight 1.;
AddMxTetraHorizonConstraint create_property_on_horizon "false" horizon "/gobj:HorizD" on TSolid "/gobj:Solid100_30" property "Strati" value 0. weight 1.;
AddMxTetraHorizonConstraint create_property_on_horizon "false" horizon "/gobj:SectionA" on TSolid "/gobj:Solid100_30" property "Strati" value 0. weight 1.;
AddMxTetraHorizonConstraint create_property_on_horizon "false" horizon "/gobj:SectionB" on TSolid "/gobj:Solid100_30" property "Strati" value 0. weight 1.;
AddMxTetraHorizonConstraint create_property_on_horizon "false" horizon "/gobj:SectionC" on TSolid "/gobj:Solid100_30" property "Strati" value 0. weight 1.;
AddMxTetraHorizonConstraint create_property_on_horizon "false" horizon "/gobj:SectionD" on TSolid "/gobj:Solid100_30" property "Strati" value 0. weight 1.;

# Set Orientation Constraints
AddMxTetraGradientCPCnstrLink controller "/gobj:Dips" controller_prop "/Dips/property:Orient" on TSolid "/gobj:Solid100_30" only_direction "true" property "Strati" weight 1.; 

# Set roughness and interpolate
AddMxTetraConstGradCnstrLink on TSolid "/gobj:Solid100_30" property "/Strati" region "everywhere" weight 0.1;
MxTetraInterpolateScalarFieldProperty fitting_factor 2. initialize_property_with_constant "true" mxdsi_error 1.e-7 mxdsi_iter -1 on TSolid "/gobj:Solid100_30" property "/Strati" value 0.;

# Visualize results
GRGGGraphicsCreateTSolidIsoSurface field 0 name "HorA" property "/Solid100_30/property:Strati" solid "/gobj:Solid100_30" value 0; 
TSurfCreateFromTSolidIso copy_properties "false" field 0 name "HorizA_Result" property "/Solid100_30/property:Strati" solid "/gobj:Solid100_30" value 0; 
GObjAssignGeologicalFeature feature "/feature:HorizA" on GObj "/gobj:HorizA_Result[type=TSurf]"; 

GRGGGraphicsCreateTSolidIsoSurface field 0 name "HorB" property "/Solid100_30/property:Strati" solid "/gobj:Solid100_30" value 60; 
TSurfCreateFromTSolidIso copy_properties "false" field 0 name "HorizB_Result" property "/Solid100_30/property:Strati" solid "/gobj:Solid100_30" value 60; 
GObjAssignGeologicalFeature feature "/feature:HorizB" on GObj "/gobj:HorizB_Result[type=TSurf]"; 

GRGGGraphicsCreateTSolidIsoSurface field 0 name "HorC" property "/Solid100_30/property:Strati" solid "/gobj:Solid100_30" value 250; 
TSurfCreateFromTSolidIso copy_properties "false" field 0 name "HorizC_Result" property "/Solid100_30/property:Strati" solid "/gobj:Solid100_30" value 250; 
GObjAssignGeologicalFeature feature "/feature:HorizC" on GObj "/gobj:HorizC_Result[type=TSurf]"; 

GRGGGraphicsCreateTSolidIsoSurface field 0 name "HorD" property "/Solid100_30/property:Strati" solid "/gobj:Solid100_30" value 330; 
TSurfCreateFromTSolidIso copy_properties "false" field 0 name "HorizD_Result" property "/Solid100_30/property:Strati" solid "/gobj:Solid100_30" value 330; 
GObjAssignGeologicalFeature feature "/feature:HorizD" on GObj "/gobj:HorizD_Result[type=TSurf]"; 

