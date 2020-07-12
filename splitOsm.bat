call %GPS_MAP_BUILDER_PROPERTIES_DIR%\map_builder_properties.cmd

java.exe -Xmx1g -jar %SPLIT_SPLITTER_DIR%\splitter.jar^
  --mapid=%SPLIT_MAP_ID%^
  --description=%SPLIT_SOURCE_FILE_NAME%^
  --output-dir=%SPLIT_DESTINATION_DIR%^
  %SPLIT_SOURCE_DIR%\%SPLIT_SOURCE_FILE_NAME%

