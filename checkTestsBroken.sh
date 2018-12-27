#!/bin/bash

ignoreTests() {
    FILE_LOCATION=$1
    sed -i '3i import org.junit.Ignore;' ${FILE_LOCATION}

    ARGS=("$@")
    for (( VAR = 1; VAR < $#; ++VAR )); do
        sed -i '/\s*public\s*void\s*'${ARGS[VAR]}'\s*(/i\    \@Ignore' ${FILE_LOCATION}
    done
}

ignoreTests "app/src/androidTest/java/com/carvalho/raphael/findbrokentest/LoginActivityTest.java" "teste"