#!/bin/bash

# Kubernetes Target Namespace
NAMESPACE="workshop"

# Helm Test Mode (default: "template")
HELM_MODE="template"
if [ "$1" = "template" ]; then
  # HELM MODE - Template - Test rendering chart templates locally.
  HELM_MODE="template"
elif [ "$1" = "dry-run" ]; then
  # HELM MODE - Dry Run - The server render your templates, then return the resulting manifest file.
  HELM_MODE="upgrade --install --dry-run"
elif [ "$1" = "install" ]; then
  # HELM MODE - Install - Install Release Chart
  HELM_MODE="upgrade --install"
fi

# Enable debug mode
if [ "$2" = "debug" ]; then
  # Add debut opts to HELM
  HELM_MODE="$HELM_MODE --debug"
fi

# Helm Test Template
helm_test_template () {
  # Get Sample Name
  TOOLS_NAME="$1"
  # Echo Title
  if ! [ -x "$(command -v figlet)" ]; then
    echo -e "\n\n\n\n... $TOOLS_NAME ! ...\n\n\n\n"
  else
    figlet " $TOOLS_NAME " | lolcat -f | boxes -d unicornsay
  fi
  # Define commons values file
  HELM_VALUES_FILES_OPTS="-f $PWD/examples/$TOOLS_NAME/values-commons.yaml"
  # Additional values file
  HELM_VALUES_ADDITIONNAL_FILE="$PWD/examples/$TOOLS_NAME/values-test.yaml"
  if [ -f "$HELM_VALUES_ADDITIONNAL_FILE" ]; then
      HELM_VALUES_FILES_OPTS="$HELM_VALUES_FILES_OPTS -f $HELM_VALUES_ADDITIONNAL_FILE"
  fi
  # Template Chart With Values
  helm $HELM_MODE -n $NAMESPACE $NAMESPACE-$TOOLS_NAME-test $HELM_VALUES_FILES_OPTS ./
}
