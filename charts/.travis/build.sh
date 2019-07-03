#!/bin/bash
$BUILD_SCRIPTS_DIR/helm/tag.sh
source $BUILD_SCRIPTS_DIR/helm/add_repos.sh
$BUILD_SCRIPTS_DIR/helm/build.sh

if [[ $SHOULD_RELEASE ]]; then
  $BUILD_SCRIPTS_DIR/helm/release.sh
fi
