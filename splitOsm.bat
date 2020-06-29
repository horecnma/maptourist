set SPLITTER_DIR=D:\gps\1_soft\splitter-r597
set SOURCE_DIR=d:\gps\builds\source
set SOURCE_FILE_NAME=sosnovka_test.osm
set DESTINATION_DIR=D:\gps\builds\out_split
set MAP_ID=63010001

java.exe -Xmx2g -jar %SPLITTER_DIR%\splitter.jar^
  --mapid=%MAP_ID%^
  --description=%SOURCE_FILE_NAME%^
  --output-dir=%DESTINATION_DIR%^
  %SOURCE_DIR%\%SOURCE_FILE_NAME%

