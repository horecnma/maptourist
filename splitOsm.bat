call map_builder_properties.cmd

set SPLIT_DESTINATION_DIR=%SPLIT_SOURCE_DIR%\split
if not exist "%SPLIT_DESTINATION_DIR%" mkdir %SPLIT_DESTINATION_DIR%

java.exe -Xmx8000M -jar %SPLIT_SPLITTER_DIR%\splitter.jar^
  --mapid=%SPLIT_MAP_ID%^
  --description=%SPLIT_SOURCE_FILE_NAME%^
  --output-dir=%SPLIT_DESTINATION_DIR%^
  %SPLIT_SOURCE_DIR%\%SPLIT_SOURCE_FILE_NAME%

