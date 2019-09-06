# Load the point data
Columns2Gocad File_name "../Sections_EW.csv" classifications "None+None+None+" columns "1+2+3+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+" ndvs "-99999+-99999+-99999+" options "name+Complex+category+Horizons+role+undefined" output_type "pointset" start_line 2 use_ndvs "0+0+0+"
GObjRename gobj "/gobj:Complex" new_name "Complex_EW"
Columns2Gocad File_name "../Sections_NS.csv" classifications "None+None+None+" columns "1+2+3+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+" ndvs "-99999+-99999+-99999+" options "name+Complex+category+Horizons+role+undefined" output_type "pointset" start_line 2 use_ndvs "0+0+0+"
GObjRename gobj "/gobj:Complex" new_name "Complex_NS"
Columns2Gocad File_name "../Moureze_Points.csv" classifications "None+None+None+None+None+None+" columns "1+2+3+4+5+6+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+OrientX+OrientY+OrientZ+" ndvs "-99999+-99999+-99999+-99999+-99999+-99999+" options "name+Complex+category+Horizons+role+undefined" output_type "pointset" start_line 2 use_ndvs "0+0+0+1+1+1+"
GObjRename gobj "/gobj:Complex" new_name "Complex_Pts"

# Store the orientation in a vectorial property
PropertyCreate force_float_property "false" gobj "/gobj:Complex_Pts[survey=''][type=VSet]" interpolation_method "Linear" no_datavalue "default (-99999)" no_datavalue_specified "true" number_of_elements 3 property_kind "Real Number" property_name "Orient" sampling_rate 0 storage "Memory"
GObjApplyScriptOnProperty aliases "" check_no_data_values_automatically "true" file_name "None" on GObj "/gobj:Complex_Pts[survey=''][type=VSet]" properties "" region "everywhere" script "{
 Orient[0] = OrientX;
 Orient[1] = OrientY;
 Orient[2] = OrientZ;

}
"
StyleSetAttribute attribute "*vectors3d" on Style "/gobj:Complex_Pts" value "true" viewer "/viewer:3D Viewer"
StyleSetAttribute attribute "*vectors3d*variable" on Style "/gobj:Complex_Pts" value "/Complex_Pts/property:Orient" viewer "/viewer:3D Viewer"
StyleUpdate on Style "/gobj:Complex_Pts" viewer "/viewer:3D Viewer"
CameraShow gobj "/gobj:Complex_EW" "/gobj:Complex_Pts" "/gobj:Complex_NS" on Camera "DefaultCamera" only "false"; 
CameraUpdateAll

# Load the grids
NewGObjLoad File_names "../Results_/Moureze.vo" coordinate_system_name "Default_depth"; 
NewGObjLoad File_names "../Results_/Moureze.so" coordinate_system_name "Default_depth";
