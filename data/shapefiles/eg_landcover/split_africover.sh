file="eg-landcover.shp"
cd ..
rm -r ac_*
mkdir ac_sparseherb ac_lowshrub ac_lowforbs ac_grasslandflood ac_herbflood ac_shrubflood ac_airport ac_arch ac_industrial ac_port ac_urban ac_greenspace ac_sand ac_rock ac_baresoil ac_saltcrust ac_reservoir ac_river ac_lake ac_rice ac_irrcrop ac_drycrop ac_orchard ac_olive
cd eg_landcover

ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = '2HR' OR CODE1 = '2SR6' OR CODE1 = '2SV6'" ../ac_sparseherb/ac_sparseherb.shp $file #Sparse Herbaceous (2HR/20060-6022), Low Sparse Shrubs With Herbaceous(2SR6/20512), Very open shrubs with closed to open herbaceous (2SV6/20389-3012/6006)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = '2SVLZ'" ../ac_lowshrub/ac_lowshrub.shp $file #Very open low shrubs (2SVLZ/20024-3013)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = '4FRLW' OR CODE1 = '4FRLW-Z-RE'" ../ac_lowforbs/ac_lowforbs.shp $file #Sparse low forbs (4FRLW/4FRLW-Z-RE)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = '4GCIFFX'" ../ac_grasslandflood/ac_grasslandflood.shp $file #Closed high grassland on permanently flooded land (4GCIFFX)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = '4HCMFFY' OR CODE1 = '4HVMFY'" ../ac_herbflood/ac_herbflood.shp $file #Closed medium herbaceous on permanently flooded land (4HCMFFY), Very open medium herbaceous on temporarily flooded land - brackish water (4HVMFY)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = '4GCIFFX'" ../ac_shrubflood/ac_shrubflood.shp $file #Closed shrubs (broadleaved evergreen) on permanently flooded land - brackish water (4SCJFF1Y)

ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = '5A'" ../ac_airport/ac_airport.shp $file #Airport (5A)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = '5A1'" ../ac_arch/ac_arch.shp $file #Archeological Site (5A1)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = '5I'" ../ac_industrial/ac_industrial.shp $file #Industrial (5I)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = '5P'" ../ac_port/ac_port.shp $file #Port (5P)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = '5U'" ../ac_urban/ac_urban.shp $file #Urban (5U)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = '5UV'" ../ac_greenspace/ac_greenspace.shp $file #Vegetated Urban (5UV)

ogr2ogr -f "ESRI Shapefile"  -where "CODE1 LIKE '6L%'" ../ac_sand/ac_sand.shp $file #Sand (6L), Long. Dunes (6LD3), Dunes (6LD4)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 LIKE '6R%'" ../ac_rock/ac_rock.shp $file #Bare Rock (6R), Bare Rock with a thin layer of sand (6RL)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 LIKE '6ST1%' OR CODE1 LIKE '6ST2%'" ../ac_baresoil/ac_baresoil.shp $file #Bare soil stony (6ST1%), Bare soil very stony (6ST2%)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = '6SZ'" ../ac_saltcrust/ac_saltcrust.shp $file #Salt Crust (6SZ)

ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = '7WP'" ../ac_reservoir/ac_reservoir.shp $file #Artifical Lakes or Reservoirs (7WP)

ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = '8WFP'" ../ac_river/ac_river.shp $file #River (8WFP)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = '8WP' OR CODE1 = '8WN1V'" ../ac_lake/ac_lake.shp $file #Lakes (8WP), Lakes with Vegation (8WN1V)

ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = 'GDZ' OR CODE1 = 'GRZ'" ../ac_rice/ac_rice.shp $file #Rice (GDZ+GRZ)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 LIKE 'HD3HQ57%' OR CODE1 = 'HD57' OR CODE1 LIKE 'HR3HQ57%'" ../ac_irrcrop/ac_irrcrop_herb.shp $file #Irrigated Herbaceous Crop (HD3HQ57%+HD57+HR3HQ57%)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 LIKE 'SBDR57V%'" ../ac_irrcrop/ac_irrcrop_shrub.shp $file #Irrigated Shrub Crop (SBDR57V)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 LIKE 'TR57V%'" ../ac_irrcrop/ac_irrcrop_tree.shp $file #Irrigated Shrub Crop (TR57V)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = 'HR4'" ../ac_drycrop/ac_drycrop.shp $file #Hervaceous Crop, non irrigated (6L)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = 'TBED57V' OR CODE1 = 'TBER47V' OR CODE1='TBER57V' OR CODE1='TM57WV'" ../ac_orchard/ac_orchard.shp $file #Orchard (TBED57V+TBER47V+TBER57V+TM57WV)
ogr2ogr -f "ESRI Shapefile"  -where "CODE1 = 'TBED57WV' OR CODE1 = 'TBER57WV' OR CODE1='TR47V'" ../ac_olive/ac_olive.shp $file #Olives (TBED57WV+TBER57WV+TR47V)
