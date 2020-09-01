# Set constraints and compute solution 
AddMxTetraHorizonConstraint create_property_on_horizon "false" horizon "/gobj:H1[survey=''][type=VSet]" on TSolid "/gobj:Solid[type=TSolid]" property "Strati" value 0. weight 1.
AddMxTetraHorizonConstraint create_property_on_horizon "false" horizon "/gobj:H2[survey=''][type=VSet]" on TSolid "/gobj:Solid[type=TSolid]" property "Strati" value 0. weight 1.
AddMxTetraHorizonConstraint create_property_on_horizon "false" horizon "/gobj:H4[survey=''][type=VSet]" on TSolid "/gobj:Solid[type=TSolid]" property "Strati" value 0. weight 1.
AddMxTetraHorizonConstraint create_property_on_horizon "false" horizon "/gobj:H5[survey=''][type=VSet]" on TSolid "/gobj:Solid[type=TSolid]" property "Strati" value 0. weight 1.
AddMxTetraHorizonConstraint create_property_on_horizon "false" horizon "/gobj:H7[survey=''][type=VSet]" on TSolid "/gobj:Solid[type=TSolid]" property "Strati" value 0. weight 1.
AddMxTetraHorizonConstraint create_property_on_horizon "false" horizon "/gobj:H9[survey=''][type=VSet]" on TSolid "/gobj:Solid[type=TSolid]" property "Strati" value 0. weight 1.
AddMxTetraConstGradCnstrLink on TSolid "/gobj:Solid[type=TSolid]" property "/Strati[property_group=''][scenario='/scenario:'][topo_dim=0][user=caumon5]" region "everywhere" weight 0.1
AddMxIsoLineConstraint iso_line "/gobj:Dips" on TSolid "/gobj:Solid" property "Strati" weight 1.; 
MxTetraInterpolateScalarFieldProperty fitting_factor 2. initialize_property_with_constant "true" mxdsi_error 1.e-7 mxdsi_iter -1 on TSolid "/gobj:Solid[type=TSolid]" property "/Strati" value 0.

# Copy this basic solution then add axis constraint and reinterpolate
PropertyCopy from "/Strati[property_group=''][scenario='/scenario:'][topo_dim=0][user=caumon5]" on GObj "/gobj:Solid" share_property_class "false" to "StructLab_basic"; 
AddMxTetraFoldAxisCnstrLink azimuth 0 on TSolid "/gobj:Solid" plunge 0 property "/Strati[property_group=''][scenario='/scenario:'][topo_dim=0][user=caumon5]" region "everywhere" weight 1.; 
MxTetraInterpolateScalarFieldProperty fitting_factor 2. initialize_property_with_constant "true" mxdsi_error 1.e-7 mxdsi_iter -1 on TSolid "/gobj:Solid[type=TSolid]" property "/Strati" value 0.

# Visualize results
StyleSetAttribute attribute "*tetra_painted" on Style "/gobj:Solid[type=TSolid]" value "off" viewer "//$default"
StyleSetAttribute attribute "*painted" on Style "/gobj:Solid[type=TSolid]" value "on" viewer "//$default"
StyleSetAttribute attribute "*painted*variable" on Style "/gobj:Solid[type=TSolid]" value "/Solid[domain=Depth][scenario='/'][type=TSolid][user=caumon5]/property:Strati[property_group=''][topo_dim=0]" viewer "//$default"
CameraSetExclusiveSubEntityShown child_guid "/Solid[domain=Depth][scenario='/'][type=TSolid][user=caumon5]/property:Strati[property_group=''][topo_dim=0]" exclusion "*painted*variable" on Camera "DefaultCamera" parent_guid "/gobj:Solid[type=TSolid]"
StyleUpdate on Style "/gobj:Solid[type=TSolid]" viewer "//$default"
SetCameraColormap object_name "/gobj:Solid[type=TSolid]" on Camera "DefaultCamera" property_name "/Solid[domain=Depth][scenario='/'][type=TSolid][user=caumon5]/property:Strati[property_group=''][topo_dim=0]" show_colormap "true"
CameraShow gobj "/gobj:Solid[type=TSolid]" on Camera "DefaultCamera" only "false"
CameraUpdateAllWithGObjs gobjs "/gobj:Solid[type=TSolid]"
CameraHide gobj "/gobj:ResultBox[survey=''][type=Voxet]" on Camera "DefaultCamera"
CameraDisplayExclusiveSubEntities ctrler_attr "*painted" exclusive_attr "*painted*variable" objects "/H1[domain=Depth][scenario='/'][survey=''][type=VSet][user=caumon5]/property:Strati[property_group=''][topo_dim=0]" on Camera "DefaultCamera" parent_level 1 show "true"
CameraSynchronizeLegend objects "/H1[domain=Depth][scenario='/'][survey=''][type=VSet][user=caumon5]/property:Strati[property_group=''][topo_dim=0]" on Camera "DefaultCamera" show "true"
GRGGGraphicsCreateTSolidIsoSurface field 0 name "H1" property "/Solid[type=TSolid]/property:Strati" solid "/gobj:Solid" value 0.
GRGGGraphicsCreateTSolidIsoSurface field 0 name "H2" property "/Solid[type=TSolid]/property:Strati" solid "/gobj:Solid" value 0.78
GRGGGraphicsCreateTSolidIsoSurface field 0 name "H3" property "/Solid[type=TSolid]/property:Strati" solid "/gobj:Solid" value 1.15
GRGGGraphicsCreateTSolidIsoSurface field 0 name "H4" property "/Solid[type=TSolid]/property:Strati" solid "/gobj:Solid" value 1.9 
GRGGGraphicsCreateTSolidIsoSurface field 0 name "H5" property "/Solid[type=TSolid]/property:Strati" solid "/gobj:Solid" value 2.5 
GRGGGraphicsCreateTSolidIsoSurface field 0 name "H6" property "/Solid[type=TSolid]/property:Strati" solid "/gobj:Solid" value 3.1 
GRGGGraphicsCreateTSolidIsoSurface field 0 name "H7" property "/Solid[type=TSolid]/property:Strati" solid "/gobj:Solid" value 3.9 
GRGGGraphicsCreateTSolidIsoSurface field 0 name "H8" property "/Solid[type=TSolid]/property:Strati" solid "/gobj:Solid" value 4.4 
GRGGGraphicsCreateTSolidIsoSurface field 0 name "H9" property "/Solid[type=TSolid]/property:Strati" solid "/gobj:Solid" value 5.2 


