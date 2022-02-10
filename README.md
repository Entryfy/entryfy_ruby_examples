# entryfy_ruby_examples

A collection of Ruby commands to interact with the Entryfy gRPC API

## Prerequisites

To get started with testing Entryfy you will have an organization with a user that can interact with the API. You will also need hardware to test your integrations or have someone share doors with your organization.

You will also need Docker and Docker compose installed on your computer.

Before starting you will need to set the environmental variable ENTRYFY_ENV to either staging or production to determine which environment to interact with.

### Entryfy AccountService

Commands to showcase interaction with the Entryfy AccountService and responses.

#### To login against the Entryfy Service

``docker compose run -e ENTRYFY_ENV=staging entryfy_ruby_examples.client thor entryfy:account_serivce:login 'username' 'password' 'device_uuid'``

#### To logut from the Entryfy AccountService

``docker compose run -e ENTRYFY_ENV=staging entryfy_ruby_examples.client thor entryfy:account_service:logout 'auth_token'``

#### To reissue auth_token from the Entryfy AccountService

``docker compose run -e ENTRYFY_ENV=staging entryfy_ruby_examples.client thor entryfy:account_service:reissue 'reissue_token'``

### Entryfy OrgService

Commands to showcase interaction with the Entryfy OrgService and responses.

#### To remotely open a door in Entryfy

``docker compose run -e ENTRYFY_ENV=staging entryfy_ruby_examples.client thor entryfy_ruby_examples:reissue 'auth_token' 'org_slug' 'door_uuid'``
