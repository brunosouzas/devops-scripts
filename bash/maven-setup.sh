#!/bin/bash

###################################################################################
#                            Install APACHE MAVEN                                 #
###################################################################################

echo "VARIABLES"
echo M2_HOME::$M2_HOME
echo MAVEN_OPTS::$MAVEN_OPTS
echo OSTYPE::$OSTYPE
echo ""

if ! command -v unzip &> /dev/null && [[ "$OSTYPE" == *"linux-gnu"* ]]; then
    echo Installing unzip on linux::$OSTYPE
    sudo apt-get install unzip
elif ! command -v unzip &> /dev/null && [[ "$OSTYPE" == *"darwin"* ]]; then
    echo Installing unzip on Mac OSX
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    brew update && brew install unzip
fi

echo ""
echo mkdir -p -v $M2_HOME
mkdir -p -v $M2_HOME
cd $M2_HOME

echo "folder to download apache maven"
cd ..
pwd

echo ""
echo Downloading Maven on $OSTYPE
curl -o apache-maven-3.8.7.zip https://archive.apache.org/dist/maven/maven-3/3.8.7/binaries/apache-maven-3.8.7-bin.zip

echo ""
echo 'unzip apache-maven'
unzip -o apache-maven-3.8.7.zip

echo ""
echo "##vso[task.prependpath]$M2_HOME/bin"

echo ""
echo mvn -version
mvn -version
