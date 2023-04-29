#!/bin/bash
#######################################################################################################
#                                           Find Artifact Path                                        #
#######################################################################################################
set -e
echo "VARIABLES"
echo ARTIFACT_PATH::$ARTIFACT_PATH
echo ""

pathFileName=$(find $ARTIFACT_PATH -maxdepth 1 -type f -name "*.jar")
echo "##vso[task.setvariable variable=PATH_ARTIFACT_FILE;isOutput=false]$pathFileName"
echo PATH_FILE_NAME::$pathFileName