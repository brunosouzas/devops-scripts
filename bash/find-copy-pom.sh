#!/bin/bash
#######################################################################################################
#                                       Find and Copy pom.xml                                         #
#######################################################################################################
set -e
echo "VARIABLES"
echo EXTRACT_FOLDER::$EXTRACT_FOLDER
echo POM_FOLDER::$POM_FOLDER
echo ""

pomFile=$(find $EXTRACT_FOLDER -name "pom.xml") 

mkdir $POM_FOLDER
cp $pomFile $POM_FOLDER