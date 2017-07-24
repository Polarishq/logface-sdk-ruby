# LogfaceClient::IdentityApi

All URIs are relative to *https://api.logface.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_api_keys_client_id_delete**](IdentityApi.md#account_api_keys_client_id_delete) | **DELETE** /account/apiKeys/{client_id} | Delete API Key
[**account_api_keys_client_id_get**](IdentityApi.md#account_api_keys_client_id_get) | **GET** /account/apiKeys/{client_id} | Get API Key
[**account_api_keys_client_id_put**](IdentityApi.md#account_api_keys_client_id_put) | **PUT** /account/apiKeys/{client_id} | Update the API Key
[**account_api_keys_get**](IdentityApi.md#account_api_keys_get) | **GET** /account/apiKeys | Get API Keys
[**account_api_keys_post**](IdentityApi.md#account_api_keys_post) | **POST** /account/apiKeys | New API Key
[**account_get**](IdentityApi.md#account_get) | **GET** /account | Accounts represent individuals
[**account_put**](IdentityApi.md#account_put) | **PUT** /account | Set whether the TOS has been agreed to
[**tenants_get**](IdentityApi.md#tenants_get) | **GET** /tenants | Get tenants
[**tenants_post**](IdentityApi.md#tenants_post) | **POST** /tenants | Add a tenant


# **account_api_keys_client_id_delete**
> account_api_keys_client_id_delete(client_id)

Delete API Key

Delete the API Key

### Example
```ruby
# load the gem
require 'logface_client'
# setup authorization
LogfaceClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = LogfaceClient::IdentityApi.new

client_id = "client_id_example" # String | the client ID of the API Key to delete


begin
  #Delete API Key
  api_instance.account_api_keys_client_id_delete(client_id)
rescue LogfaceClient::ApiError => e
  puts "Exception when calling IdentityApi->account_api_keys_client_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| the client ID of the API Key to delete | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **account_api_keys_client_id_get**
> ApiKeyResponse account_api_keys_client_id_get(client_id)

Get API Key

Retrieve the api key for the current account, specified by ID

### Example
```ruby
# load the gem
require 'logface_client'
# setup authorization
LogfaceClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = LogfaceClient::IdentityApi.new

client_id = "client_id_example" # String | the client ID to retrieve


begin
  #Get API Key
  result = api_instance.account_api_keys_client_id_get(client_id)
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling IdentityApi->account_api_keys_client_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| the client ID to retrieve | 

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **account_api_keys_client_id_put**
> ApiKeyResponse account_api_keys_client_id_put(client_id, opts)

Update the API Key

Enable/Disable the API Key

### Example
```ruby
# load the gem
require 'logface_client'
# setup authorization
LogfaceClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = LogfaceClient::IdentityApi.new

client_id = "client_id_example" # String | the client ID of the API to update

opts = { 
  body: LogfaceClient::Body2.new # Body2 | 
}

begin
  #Update the API Key
  result = api_instance.account_api_keys_client_id_put(client_id, opts)
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling IdentityApi->account_api_keys_client_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| the client ID of the API to update | 
 **body** | [**Body2**](Body2.md)|  | [optional] 

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **account_api_keys_get**
> ApiKeysResponse account_api_keys_get

Get API Keys

Retrieve the api keys for the current account

### Example
```ruby
# load the gem
require 'logface_client'
# setup authorization
LogfaceClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = LogfaceClient::IdentityApi.new

begin
  #Get API Keys
  result = api_instance.account_api_keys_get
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling IdentityApi->account_api_keys_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiKeysResponse**](ApiKeysResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **account_api_keys_post**
> ApiKeyResponse account_api_keys_post(opts)

New API Key

Create a new API Key

### Example
```ruby
# load the gem
require 'logface_client'
# setup authorization
LogfaceClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = LogfaceClient::IdentityApi.new

opts = { 
  body: LogfaceClient::Body1.new # Body1 | 
}

begin
  #New API Key
  result = api_instance.account_api_keys_post(opts)
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling IdentityApi->account_api_keys_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body1**](Body1.md)|  | [optional] 

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **account_get**
> AccountResponse account_get

Accounts represent individuals

Retrieve an account

### Example
```ruby
# load the gem
require 'logface_client'
# setup authorization
LogfaceClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = LogfaceClient::IdentityApi.new

begin
  #Accounts represent individuals
  result = api_instance.account_get
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling IdentityApi->account_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **account_put**
> AccountResponse account_put(opts)

Set whether the TOS has been agreed to

Update the TOS boolean for an account

### Example
```ruby
# load the gem
require 'logface_client'
# setup authorization
LogfaceClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = LogfaceClient::IdentityApi.new

opts = { 
  body: LogfaceClient::Body.new # Body | 
}

begin
  #Set whether the TOS has been agreed to
  result = api_instance.account_put(opts)
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling IdentityApi->account_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](Body.md)|  | [optional] 

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **tenants_get**
> Array&lt;Tenant&gt; tenants_get

Get tenants

Get all tenants for a user

### Example
```ruby
# load the gem
require 'logface_client'
# setup authorization
LogfaceClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = LogfaceClient::IdentityApi.new

begin
  #Get tenants
  result = api_instance.tenants_get
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling IdentityApi->tenants_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Tenant&gt;**](Tenant.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **tenants_post**
> Tenant tenants_post(opts)

Add a tenant

Add a new tenant and assign to the user

### Example
```ruby
# load the gem
require 'logface_client'
# setup authorization
LogfaceClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = LogfaceClient::IdentityApi.new

opts = { 
  body: LogfaceClient::Body6.new # Body6 | 
}

begin
  #Add a tenant
  result = api_instance.tenants_post(opts)
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling IdentityApi->tenants_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body6**](Body6.md)|  | [optional] 

### Return type

[**Tenant**](Tenant.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



