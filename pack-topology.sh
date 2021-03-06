#/bin/env bash

VERSION=$(git rev-parse --short HEAD)
ZIPFILE="topology-$VERSION.zip"

rm -f $ZIPFILE

7z a $ZIPFILE                    \
    availabilitySet.json         \
    createUiDefinition.json      \
    mainTemplate.json            \
    networkSecurityGroup.json    \
    publicIpAddress.json         \
    quasardbNode.json            \
    quasardbNode.setup.sh        \
    quasardbTestbox.json         \
    quasardbTestbox.motd.txt     \
    quasardbTestbox.setup.sh     \
    storageAccount.existing.json \
    storageAccount.new.json      \
    virtualNetwork.json
