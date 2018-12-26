#!/bin/bash

ignoreTests() {
    FILE_LOCATION="app/src/androidTest/java/com/carvalho/raphael/findbrokentest/LoginActivityTest.java"
    sed -i '3i import org.junit.Ignore;' ${FILE_LOCATION}

    METHOD_NAME="teste"
    #ARGS = $*
    #for VAR in $* ; do
        sed -i '/\s*public\s*void\s*'${METHOD_NAME}'\s*(/i\    \@Ignore' ${FILE_LOCATION}
    #done
}

ignoreTests