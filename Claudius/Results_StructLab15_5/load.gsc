# Load Horizon Data
Columns2Gocad File_name "../APoints.csv" classifications "None+None+None+None+" columns "1+2+3+4+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+Strati+" ndvs "-99999+-99999+-99999+-99999+" options "name+HorizA+category+Horizons+role+Picks" output_type "pointset" start_line 2 use_ndvs "0+0+0+1+";
Columns2Gocad File_name "../BPoints.csv" classifications "None+None+None+None+" columns "1+2+3+4+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+Strati+" ndvs "-99999+-99999+-99999+-99999+" options "name+HorizB+category+Horizons+role+Picks" output_type "pointset" start_line 2 use_ndvs "0+0+0+1+";
Columns2Gocad File_name "../CPoints.csv" classifications "None+None+None+None+" columns "1+2+3+4+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+Strati+" ndvs "-99999+-99999+-99999+-99999+" options "name+HorizC+category+Horizons+role+Picks" output_type "pointset" start_line 2 use_ndvs "0+0+0+1+";
Columns2Gocad File_name "../DPoints.csv" classifications "None+None+None+None+" columns "1+2+3+4+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+Strati+" ndvs "-99999+-99999+-99999+-99999+" options "name+HorizD+category+Horizons+role+Picks" output_type "pointset" start_line 2 use_ndvs "0+0+0+1+";
Columns2Gocad File_name "../ASection.csv" classifications "None+None+None+None+" columns "1+2+3+4+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 ;" names "X+Y+Z+Strati+" ndvs "-99999+-99999+-99999+-99999+" options "closed+false+name+SectionA+category+Horizons+role+Contours" output_type "curve" start_line 2 use_ndvs "0+0+0+1+";
Columns2Gocad File_name "../BSection.csv" classifications "None+None+None+None+" columns "1+2+3+4+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 ;" names "X+Y+Z+Strati+" ndvs "-99999+-99999+-99999+-99999+" options "closed+false+name+SectionB+category+Horizons+role+Contours" output_type "curve" start_line 2 use_ndvs "0+0+0+1+";
Columns2Gocad File_name "../CSection.csv" classifications "None+None+None+None+" columns "1+2+3+4+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 ;" names "X+Y+Z+Strati+" ndvs "-99999+-99999+-99999+-99999+" options "closed+false+name+SectionC+category+Horizons+role+Contours" output_type "curve" start_line 2 use_ndvs "0+0+0+1+";
Columns2Gocad File_name "../DSection.csv" classifications "None+None+None+None+" columns "1+2+3+4+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+Strati+" ndvs "-99999+-99999+-99999+-99999+" options "closed+false+name+SectionD+category+Horizons+role+Contours" output_type "curve" start_line 2 use_ndvs "0+0+0+1+";
GObjAssignGeologicalFeature feature "/feature:HorizA" on GObj "/gobj:SectionA"; 
GObjAssignGeologicalFeature feature "/feature:HorizB" on GObj "/gobj:SectionB"; 
GObjAssignGeologicalFeature feature "/feature:HorizC" on GObj "/gobj:SectionC"; 
GObjAssignGeologicalFeature feature "/feature:HorizD" on GObj "/gobj:SectionD"; 
RemoveGeologicalInformation geologic_feature "/feature:SectionA"; 
RemoveGeologicalInformation geologic_feature "/feature:SectionB"; 
RemoveGeologicalInformation geologic_feature "/feature:SectionC"; 
RemoveGeologicalInformation geologic_feature "/feature:SectionD"; 
CameraShow gobj "/gobj:SectionA[modeling_role=Contours]" "/gobj:HorizA[modeling_role=Picks]" on Camera "DefaultCamera" only "false"; 
CameraShow gobj "/gobj:SectionB[modeling_role=Contours]" "/gobj:HorizB[modeling_role=Picks]" on Camera "DefaultCamera" only "false"; 
CameraShow gobj "/gobj:SectionC[modeling_role=Contours]" "/gobj:HorizC[modeling_role=Picks]" on Camera "DefaultCamera" only "false"; 
CameraShow gobj "/gobj:SectionD[modeling_role=Contours]" "/gobj:HorizD[modeling_role=Picks]" on Camera "DefaultCamera" only "false"; 

# Load Dip data
Columns2Gocad File_name "../Dips.csv" classifications "None+None+None+None+None+None+" columns "1+2+3+4+5+6+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+OrientX+OrientY+OrientZ+" ndvs "-99999+-99999+-99999+-99999+-99999+-99999+" options "closed+false+name+Dips+category+Horizons+role+Picks" output_type "pointset" start_line 2 use_ndvs "0+0+0+1+1+1+";
CreateGeologicalFeature geologic_type "Horizon" name "Orientations";
GObjAssignGeologicalFeature feature "/feature:Orientations" on GObj "/gobj:Dips";
RemoveGeologicalInformation geologic_feature "/feature:Dips"; 
PropertyCreate force_float_property "false" gobj "/gobj:Dips" interpolation_method "Linear" no_datavalue "default (-99999)" no_datavalue_specified "true" number_of_elements 3 property_kind "Real Number" property_name "Orient" sampling_rate  storage "Memory";
GObjApplyScriptOnProperty aliases "" check_no_data_values_automatically "true" file_name "None" on GObj "/gobj:Dips" properties "" region "everywhere" script "{
 Orient[0] = OrientX;
 Orient[1] = OrientY;
 Orient[2] = OrientZ;
}
";
StyleSetAttribute attribute "*vectors3d" on Style "/gobj:Dips" value "true" viewer "/viewer:3D Viewer"; 
StyleSetAttribute attribute "*vectors3d*variable" on Style "/gobj:Dips" value "/Dips/property:Orient[topo_dim=0]" viewer "/viewer:3D Viewer";
StyleSetAttribute attribute "*vectors3d*arrow" on Style "/gobj:Dips" value "true" viewer "/viewer:3D Viewer"; 
StyleUpdate on Style "/Dips" viewer "/viewer:3D Viewer";
CameraUpdateAll;
CameraShow gobj "/gobj:Dips" on Camera "DefaultCamera" only "false";

# Load Fault, Conformable TetMesh and Voxet
NewGObjLoad File_names "../Fault.ts" coordinate_system_name "Default_depth"; 
NewGObjLoad File_names "../Results_/Solid.vo" coordinate_system_name "Default_depth"; 
NewGObjLoad File_names "../Results_/Box.vo" coordinate_system_name "Default_depth"; 

