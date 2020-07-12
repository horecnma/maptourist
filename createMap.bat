rem 1. download *.osm data 
rem 2. split *.osm data with splitter.jar. Result is multiple small *.osm files and template.args file
rem 3. run this bat file. Result is imagesupp.img in output directory
rem 4. see result in basecamp: mount virtual drive, copy imagesupp.img to VIRT_DRIVE:/Garmin/, use JaVaWa Device Manager to import map from virtual drive to BaseCamp, start BaseCamp

call %GPS_MAP_BUILDER_PROPERTIES_DIR%\map_builder_properties.cmd

rem order is significant. -c template.args should be last
rem 
java -jar %CREATE_MKGMAP_DIR%\mkgmap.jar^
  --gmapsupp^
  --style-file=%CREATE_CONFIG_DIR%^
  --charset=windows-1251^
  --code-page=1251^
  --output-dir=%CREATE_DESTINATION_DIR%^
  --transparent --draw-priority=30^
  --family-id=840^
  -c %CREATE_CONFIG_DIR%\optionsfile.args^
  --road-name-config=%CREATE_CONFIG_DIR%\roadNameConfig.txt^
  -c %SPLIT_DESTINATION_DIR%\template.args^
  %CREATE_CONFIG_DIR%\OSM-2018.txt