# maptourist
Styles and build scripts for creating maps like maptourist.org

## Usage:
1. Download *.osm or *.pbf raw data (bbbike or other sites)
2. Create file `map_builder_properties.cmd` and set your paths:
```bat
rem SPLIT_* variables are used on split phase. CREATE_* variables are used on map creation phase.
rem SPLIT_SOURCE_FILE_NAME is *.osm  or *.pbf file in your SPLIT_SOURCE_DIR directory
rem SPLIT_MAP_ID is random but should be unique in your device otherwise only one map with same ID is visible
rem set CREATE_MAKE_TRANSPARRENT=true for map with contour lines

set SPLIT_SPLITTER_DIR=D:\gps_map_builder\splitter-r597
set CREATE_MKGMAP_DIR=D:\gps_map_builder\mkgmap-r4562
set CREATE_CONFIG_DIR=D:\gps_map_builder\maptourist\CurrentConfigs

set SPLIT_SOURCE_DIR=D:\gps_map_builder\build\source
set SPLIT_SOURCE_FILE_NAME=kavkaz_osm.pbf
set SPLIT_MAP_ID=63010012
set CREATE_MAKE_TRANSPARRENT=true

set SPLIT_DESTINATION_DIR=D:\gps_map_builder\build\out_split_srtm
set CREATE_DESTINATION_DIR=D:\gps_map_builder\build\out_srtm
```
3. Create system variable `GPS_MAP_BUILDER_PROPERTIES_DIR=<dir_with__map_builder_properties.cmd>`
4. Run splitOsm.bat. It prepares data for map creation. Result files are stored in SPLIT_DESTINATION_DIR.
5. Run createMap.bat. It builds map. Result files are stored in CREATE_DESTINATION_DIR. Set transparent flag in createMap.bat manually for map with contour lines)

## Branches:
+ source - originals files from https://maptourist.org/osm-garmin/CurrentConfigs/
+ master - custom changes
