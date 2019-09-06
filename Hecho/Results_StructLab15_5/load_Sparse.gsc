#### Load and prepare the data ####
# Load horizons
Columns2Gocad File_name "../Sparse/H1.csv" classifications "None+None+None+None+" columns "1+2+3+4+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+Strati+" ndvs "-99999+-99999+-99999+-99999+" options "name+H1+category+Horizons+role+Picks" output_type "pointset" start_line 2 use_ndvs "0+0+0+1+";
Columns2Gocad File_name "../Sparse/H2.csv" classifications "None+None+None+None+" columns "1+2+3+4+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+Strati+" ndvs "-99999+-99999+-99999+-99999+" options "name+H2+category+Horizons+role+Picks" output_type "pointset" start_line 2 use_ndvs "0+0+0+1+";
Columns2Gocad File_name "../Sparse/H4.csv" classifications "None+None+None+None+" columns "1+2+3+4+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+Strati+" ndvs "-99999+-99999+-99999+-99999+" options "name+H4+category+Horizons+role+Picks" output_type "pointset" start_line 2 use_ndvs "0+0+0+1+";
Columns2Gocad File_name "../Sparse/H5.csv" classifications "None+None+None+None+" columns "1+2+3+4+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+Strati+" ndvs "-99999+-99999+-99999+-99999+" options "name+H5+category+Horizons+role+Picks" output_type "pointset" start_line 2 use_ndvs "0+0+0+1+";
Columns2Gocad File_name "../Sparse/H7.csv" classifications "None+None+None+None+" columns "1+2+3+4+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+Strati+" ndvs "-99999+-99999+-99999+-99999+" options "name+H7+category+Horizons+role+Picks" output_type "pointset" start_line 2 use_ndvs "0+0+0+1+";
Columns2Gocad File_name "../Sparse/H9.csv" classifications "None+None+None+None+" columns "1+2+3+4+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+Strati+" ndvs "-99999+-99999+-99999+-99999+" options "name+H9+category+Horizons+role+Picks" output_type "pointset" start_line 2 use_ndvs "0+0+0+1+";


# Load faults
HistoryRun filename "./load_faults.gsc";

#Load Dips
Columns2Gocad File_name "../Sparse/Dips.csv" classifications "None+None+None+None+None+None+" columns "1+2+3+6+4+5+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+SEGID+OrientX+OrientZ+" ndvs "-99999+-99999+-99999+-99999+-99999+-99999+" options "closed+false+name+Dips+category+Faults+role+Sticks" output_type "curve" start_line 2 use_ndvs "0+0+0+0+1+1+";
CreateGeologicalFeature geologic_type "Horizon" name "Orientations";
GObjAssignGeologicalFeature feature "/feature:Orientations[type=FeatureBoundary]" on GObj "/gobj:Dips[domain=Depth][modeling_role=Sticks][scenario='/'][type=PLine]";
RemoveGeologicalInformation geologic_feature "/feature:Dips[province=''][type=FeatureBoundary]";
PropertyCreate force_float_property "false" gobj "/gobj:Dips[domain=Depth][modeling_role=''][scenario='/'][survey=''][type=PLine][user=caumon5]" interpolation_method "Linear" no_datavalue "default (-99999)" no_datavalue_specified "true" number_of_elements 3 property_kind "Real Number" property_name "Orient" sampling_rate  storage "Memory";
GObjApplyScriptOnProperty aliases "" check_no_data_values_automatically "true" file_name "None" on GObj "/gobj:Dips[domain=Depth][modeling_role=''][scenario='/'][survey=''][type=PLine][user=caumon5]" properties "" region "everywhere" script "{
 Orient[0] = OrientX;
 Orient[1] = 0;
 Orient[2] = OrientZ;
}
";
StyleSetAttribute attribute "*vectors3d" on Style "/gobj:Dips" value "true" viewer "/viewer:3D Viewer"; 
StyleSetAttribute attribute "*vectors3d*variable" on Style "/gobj:Dips" value "/Dips/property:Orient[property_group=''][topo_dim=0]" viewer "/viewer:3D Viewer";
StyleUpdate on Style "/gobj:Dips[domain=Depth][modeling_role=''][scenario='/'][survey=''][type=PLine][user=caumon5]" viewer "/viewer:3D Viewer";
CameraUpdateAll;

#Load volumes
NewGObjLoad File_names "../Results_/HechoTetMesh015.so" "../Results_/ResultVoxet.vo" coordinate_system_name "Default_depth"
PropertyRemove name "/ResultBox[domain=Depth][scenario='/'][type=Voxet][user=caumon5]/property:Strati[topo_dim=3]" on GObj "/gobj:ResultBox[type=Voxet]"
TSolidCreateFromLightTSolid copy_points "true" name "Solid" one_volume_per_connected_set "true" solid "/gobj:HechoSolid_015[type=LightTSolid]"
CameraHide gobj "/gobj:HechoSolid_015" on Camera "DefaultCamera";


