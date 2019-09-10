package http

import (
	"net/http"

	"github.com/cyberark/secretless-broker/pkg/secretless/plugin"
	"github.com/cyberark/secretless-broker/pkg/secretless/plugin/connector"
)

// Plugin is the main interface that HTTP plugins need to implement
// to be loaded by our codebase.
type Plugin interface {
	// PluginInfo contains a key-value map of informational fields
	// about the plugin.
	PluginInfo() map[string]string

	// NewConnector creates a new Connector based on the ConnectorResources
	// passed into it.
	NewConnector(connector.Resources) Connector
}

// Connector is the function that will be invoked when a matching
// request comes in. It uses both the request object and the secrets
// map to authenticate the client.
type Connector func(request *http.Request, secrets plugin.SecretsByID) error