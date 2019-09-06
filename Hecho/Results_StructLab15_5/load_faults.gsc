# Load faults
Columns2Gocad File_name "../F1Line.csv" classifications "None+None+None+" columns "1+2+3+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+" ndvs "-99999+-99999+-99999+" options "closed+false+name+F1Line+category+Faults+role+Sticks" output_type "curve" start_line 2 use_ndvs "0+0+0+"
Columns2Gocad File_name "../F2Line.csv" classifications "None+None+None+" columns "1+2+3+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+" ndvs "-99999+-99999+-99999+" options "closed+false+name+F2Line+category+Faults+role+Sticks" output_type "curve" start_line 2 use_ndvs "0+0+0+"
Columns2Gocad File_name "../F3Line.csv" classifications "None+None+None+" columns "1+2+3+" cs_settings "Domain=Default_depth" delimited 1 end_line 0 limits "merge_delimiters=0+0 	;" names "X+Y+Z+" ndvs "-99999+-99999+-99999+" options "closed+false+name+F3Line+category+Faults+role+Sticks" output_type "curve" start_line 2 use_ndvs "0+0+0+"
NewGObjLoad File_names "../AllFaultSurfaces.ts" coordinate_system_name "Default_depth";
GObjAssignGeologicalFeature feature "/feature:F1[province=''][type=FeatureBoundary]" on GObj "/gobj:F1Line[modeling_role=Sticks][survey=''][type=PLine]"
GObjAssignGeologicalFeature feature "/feature:F2[province=''][type=FeatureBoundary]" on GObj "/gobj:F2Line[modeling_role=Sticks][survey=''][type=PLine]"
GObjAssignGeologicalFeature feature "/feature:F3[province=''][type=FeatureBoundary]" on GObj "/gobj:F3Line[modeling_role=Sticks][survey=''][type=PLine]"
RemoveGeologicalInformation geologic_feature "/feature:F1Line[province=''][type=FeatureBoundary]" "/feature:F2Line[province=''][type=FeatureBoundary]" "/feature:F3Line[province=''][type=FeatureBoundary]";


