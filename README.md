# logface_client

LogfaceClient - the Ruby gem for the FireFawkes Developer API

External Facing Developer API 

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1
- Package version: 0.0.1
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build logface_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./logface_client-0.0.1.gem
```
(for development, run `gem install --dev ./logface_client-0.0.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'logface_client', '~> 0.0.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'logface_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'logface_client'

api_instance = LogfaceClient::ApplicationsApi.new

opts = { 
  index: 0, # Integer | Index of the first event in the set of returned results.  Negative index will count from the end of the results.
  count: 10 # Integer | Number of events desired.  Will return fewer if there are fewer to return.
}

begin
  #Find applications
  result = api_instance.application_get(opts)
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling ApplicationsApi->application_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.logface.io/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*LogfaceClient::ApplicationsApi* | [**application_get**](docs/ApplicationsApi.md#application_get) | **GET** /application | Find applications
*LogfaceClient::ApplicationsApi* | [**application_id_get**](docs/ApplicationsApi.md#application_id_get) | **GET** /application/{id} | Find an application
*LogfaceClient::ContextApi* | [**contexts_id_get**](docs/ContextApi.md#contexts_id_get) | **GET** /contexts/{id} | Retrieve context
*LogfaceClient::ContextApi* | [**contexts_post**](docs/ContextApi.md#contexts_post) | **POST** /contexts | Create a search context
*LogfaceClient::EventsApi* | [**events**](docs/EventsApi.md#events) | **POST** /events | Send events
*LogfaceClient::EventsApi* | [**events_get**](docs/EventsApi.md#events_get) | **GET** /events | Retrieve matching events
*LogfaceClient::IdentityApi* | [**account_api_keys_client_id_delete**](docs/IdentityApi.md#account_api_keys_client_id_delete) | **DELETE** /account/apiKeys/{client_id} | Delete API Key
*LogfaceClient::IdentityApi* | [**account_api_keys_client_id_get**](docs/IdentityApi.md#account_api_keys_client_id_get) | **GET** /account/apiKeys/{client_id} | Get API Key
*LogfaceClient::IdentityApi* | [**account_api_keys_client_id_put**](docs/IdentityApi.md#account_api_keys_client_id_put) | **PUT** /account/apiKeys/{client_id} | Update the API Key
*LogfaceClient::IdentityApi* | [**account_api_keys_get**](docs/IdentityApi.md#account_api_keys_get) | **GET** /account/apiKeys | Get API Keys
*LogfaceClient::IdentityApi* | [**account_api_keys_post**](docs/IdentityApi.md#account_api_keys_post) | **POST** /account/apiKeys | New API Key
*LogfaceClient::IdentityApi* | [**account_get**](docs/IdentityApi.md#account_get) | **GET** /account | Accounts represent individuals
*LogfaceClient::IdentityApi* | [**account_put**](docs/IdentityApi.md#account_put) | **PUT** /account | Set whether the TOS has been agreed to
*LogfaceClient::IdentityApi* | [**tenants_get**](docs/IdentityApi.md#tenants_get) | **GET** /tenants | Get tenants
*LogfaceClient::IdentityApi* | [**tenants_post**](docs/IdentityApi.md#tenants_post) | **POST** /tenants | Add a tenant
*LogfaceClient::LoginApi* | [**login_authorize_callback_get**](docs/LoginApi.md#login_authorize_callback_get) | **GET** /login/authorize/callback | Endpoint call via a social login oauth2 callback
*LogfaceClient::LoginApi* | [**login_authorize_get**](docs/LoginApi.md#login_authorize_get) | **GET** /login/authorize | Endpoint to begin the oauth2 authorization flow
*LogfaceClient::LoginApi* | [**login_oauth_revoke_post**](docs/LoginApi.md#login_oauth_revoke_post) | **POST** /login/oauth/revoke | Revoke a refresh token
*LogfaceClient::LoginApi* | [**login_oauth_token_post**](docs/LoginApi.md#login_oauth_token_post) | **POST** /login/oauth/token | Get JWT for API Keys
*LogfaceClient::LoginApi* | [**login_providers_get**](docs/LoginApi.md#login_providers_get) | **GET** /login/providers | Returns a list of social providers
*LogfaceClient::LoginApi* | [**login_token_post**](docs/LoginApi.md#login_token_post) | **POST** /login/token | Endpoint to get a new refresh token
*LogfaceClient::SearchApi* | [**search_post**](docs/SearchApi.md#search_post) | **POST** /search | Retrieve matching events


## Documentation for Models

 - [LogfaceClient::AccountResponse](docs/AccountResponse.md)
 - [LogfaceClient::ApiKey](docs/ApiKey.md)
 - [LogfaceClient::ApiKeyResponse](docs/ApiKeyResponse.md)
 - [LogfaceClient::ApiKeysResponse](docs/ApiKeysResponse.md)
 - [LogfaceClient::Application](docs/Application.md)
 - [LogfaceClient::ApplicationRequest](docs/ApplicationRequest.md)
 - [LogfaceClient::ApplicationsResponse](docs/ApplicationsResponse.md)
 - [LogfaceClient::Body](docs/Body.md)
 - [LogfaceClient::Body1](docs/Body1.md)
 - [LogfaceClient::Body2](docs/Body2.md)
 - [LogfaceClient::Body3](docs/Body3.md)
 - [LogfaceClient::Body4](docs/Body4.md)
 - [LogfaceClient::Body5](docs/Body5.md)
 - [LogfaceClient::Body6](docs/Body6.md)
 - [LogfaceClient::Error](docs/Error.md)
 - [LogfaceClient::Event](docs/Event.md)
 - [LogfaceClient::Events](docs/Events.md)
 - [LogfaceClient::EventsReturn](docs/EventsReturn.md)
 - [LogfaceClient::FilterKV](docs/FilterKV.md)
 - [LogfaceClient::ListMetaData](docs/ListMetaData.md)
 - [LogfaceClient::QueryInfo](docs/QueryInfo.md)
 - [LogfaceClient::QueryLogicInfoMetaData](docs/QueryLogicInfoMetaData.md)
 - [LogfaceClient::QueryResponse](docs/QueryResponse.md)
 - [LogfaceClient::SearchContext](docs/SearchContext.md)
 - [LogfaceClient::SimpleFilter](docs/SimpleFilter.md)
 - [LogfaceClient::SocialProvider](docs/SocialProvider.md)
 - [LogfaceClient::Tenant](docs/Tenant.md)
 - [LogfaceClient::TimeRange](docs/TimeRange.md)
 - [LogfaceClient::Token](docs/Token.md)


## Documentation for Authorization


### basicAuth

- **Type**: HTTP basic authentication
