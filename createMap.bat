rem 1. download *.osm data 
rem 2. split *.osm data with splitter.jar. Result is multiple small *.osm files and template.args file
rem 3. run this bat file. Result is imagesupp.img in output directory
rem 4. see result in basecamp: mount virtual drive, copy imagesupp.img to VIRT_DRIVE:/Garmin/, use JaVaWa Device Manager to import map from virtual drive to BaseCamp, start BaseCamp

set MKGMAP_DIR=H:\master\GPS\soft\mkgmap-r4555
set CONFIG_DIR=H:\master\GPS\test\CurrentConfigs
set DESTINATION_DIR=H:\master\GPS\test\out\out
set SPLITTER_RESULTS_DIR=h:\master\GPS\test\out

rem order is significant. -c template.args should be last
java -jar %MKGMAP_DIR%\mkgmap.jar^
  --gmapsupp^
  --style-file=%CONFIG_DIR%^
  --charset=windows-1251^
  --code-page=1251^
  --output-dir=%DESTINATION_DIR%^
  -c %CONFIG_DIR%\optionsfile.args^
  --road-name-config=%CONFIG_DIR%\roadNameConfig.txt^
  -c %SPLITTER_RESULTS_DIR%\template.args^
  %CONFIG_DIR%\OSM-2018.txt