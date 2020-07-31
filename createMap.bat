rem 1. download *.osm data 
rem 2. split *.osm data with splitter.jar. Result is multiple small *.osm files and template.args file
rem 3. run this bat file. Result is imagesupp.img in output directory
rem 4. see result in basecamp: mount virtual drive, copy imagesupp.img to VIRT_DRIVE:/Garmin/, use JaVaWa Device Manager to import map from virtual drive to BaseCamp, start BaseCamp

rem If map is created with contours then create osm map and map with contours. Map with contours should be transparent and have priority>25(default). Then join 2 maps with gmt.
rem Osm raw data and contours can be downloaded from bbbike or another sites.

call %GPS_MAP_BUILDER_PROPERTIES_DIR%\map_builder_properties.cmd

if %CREATE_MAKE_TRANSPARRENT% == true (
rem use   --transparent --draw-priority=30^  for map with contours
  set TRANSPARRENT=--transparent --draw-priority=30
) else (
  set TRANSPARRENT=
)
rem order is significant. -c template.args should be last
rem family-id is same as FID in OSM-2018.txt
java -jar %CREATE_MKGMAP_DIR%\mkgmap.jar^
  --gmapsupp^
  --style-file=%CREATE_CONFIG_DIR%^
  --charset=windows-1251^
  --code-page=1251^
  --output-dir=%CREATE_DESTINATION_DIR%^
  %TRANSPARRENT%^
  --family-id=480^
  -c %CREATE_CONFIG_DIR%\optionsfile.args^
  --road-name-config=%CREATE_CONFIG_DIR%\roadNameConfig.txt^
  -c %SPLIT_DESTINATION_DIR%\template.args^
  %CREATE_CONFIG_DIR%\OSM-2018.txt
