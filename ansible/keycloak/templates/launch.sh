#!/bin/bash

if [ "x$KEYCLOAK_HOME" = "x" ]; then
    KEYCLOAK_HOME="/opt/keycloak/keycloak-{{ keycloak_version }}"
fi

if [[ "$1" == "domain" ]]; then
    $KEYCLOAK_HOME/bin/domain.sh -c $2 -b $3
else
    $KEYCLOAK_HOME/bin/standalone.sh -c $2 -b $3
fi
