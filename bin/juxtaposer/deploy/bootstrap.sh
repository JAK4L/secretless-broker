export CONFIG_TEMPLATE=pg
export TEST_DURATION=1h

export APP_NAME=juxtaposer-${CONFIG_TEMPLATE}

export APP_SERVICE_ACCOUNT=secretless-xa
export AUTHENTICATOR_ID=openshift/xa-secretless
export DAP_ACCOUNT=xa
export DAP_NAMESPACE_NAME=xa-secretless
export DAP_SSL_CERT_CONFIG_MAP=dap-ssl-cert
export DOCKER_REGISTRY_PATH=REPLACEME
export SECRETELESS_IMAGE="cyberark/secretless-broker:1.2.0"
export TEST_APP_NAMESPACE_NAME=srdjan-secretless-xa

OC_REPOSITORY="docker-registry.default.svc:5000/$TEST_APP_NAMESPACE_NAME"
TAG_NAME="$TEST_APP_NAMESPACE_NAME"
export PERFTOOL_IMAGE="$OC_REPOSITORY/$APP_NAME:$TAG_NAME"
