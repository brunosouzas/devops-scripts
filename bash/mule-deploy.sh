#!/bin/bash

echo "VARIABLES"
echo POM_FILE::$POM_FILE
echo SETTINGS_FILE::$SETTINGS_FILE
echo PATH_ARTIFACT_FILE::$PATH_ARTIFACT_FILE
echo encryptKey::$encryptKey
echo muleEnv::$muleEnv
echo chEnv::$chEnv
echo anypointClientId::$AnypointClientId
echo anypointClientSecret::$AnypointClientSecret
echo ""

mvn --batch-mode mule:deploy -s $SETTINGS_FILE -f $POM_FILE \
    -Dmule.artifact=$PATH_ARTIFACT_FILE \
    -Dencrypt.key=$encryptKey \
    -Ddeployment.env=$muleEnv \
    -Dch2.env=$chEnv \
    -Dap.client_id=$AnypointClientId \
    -Dap.client_secret=$AnypointClientSecret \