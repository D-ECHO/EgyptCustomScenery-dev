if [ $1 -eq 1 ]
then
	geo='--min-lon=31.25 --max-lon=31.5 --min-lat=30.0 --max-lat=30.25'	#small test area around Cairo airport
elif [ $1 -eq 2 ]
then
	geo='--min-lon=30.5 --max-lon=32.0 --min-lat=29.5 --max-lat=30.5'	#Cairo region
fi
echo $1
echo $geo
tg-construct --work-dir=./work-final --output-dir=./output/Terrain `echo $geo` --threads AirportArea SRTM-1 AirportObj Default Ocean Hole Freeway Road Road-Motorway Road-Trunk Road-Residential Road-Primary Road-Secondary Road-Tertiary Road-Service Road-Pedestrian Road-Steps Road-Unclassified Airport Pond Lake DryLake Reservoir IntermittentLake IntermittentStream Watercourse Canal Cliffs Glacier PackIce PolarIce Ocean Estuary Urban SubUrban Town Fishing Construction Industrial Port Dump FloodLand Lagoon Bog Marsh SaltMarsh Sand Saline Littoral Dirt Rock Lava OpenMining BuiltUpCover Transport Cemetery DryCrop IrrCrop Rice MixedCrop Vineyard Bamboo Mangrove ComplexCrop NaturalCrop CropGrass CropWood AgroForest Olives GolfCourse Greenspace GrassCover Grassland ScrubCover Scrub ShrubGrassCover SavannaCover Orchard DeciduousForest DeciduousBroadCover EvergreenForest EvergreenBroadCover MixedForest RainForest BarrenCover HerbTundra Sclerophyllous Heath Burnt SnowCover Island Default Void Null Unknown Railroad Asphalt Stream River
