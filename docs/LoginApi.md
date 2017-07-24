# LogfaceClient::LoginApi

All URIs are relative to *https://api.logface.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**login_authorize_callback_get**](LoginApi.md#login_authorize_callback_get) | **GET** /login/authorize/callback | Endpoint call via a social login oauth2 callback
[**login_authorize_get**](LoginApi.md#login_authorize_get) | **GET** /login/authorize | Endpoint to begin the oauth2 authorization flow
[**login_oauth_revoke_post**](LoginApi.md#login_oauth_revoke_post) | **POST** /login/oauth/revoke | Revoke a refresh token
[**login_oauth_token_post**](LoginApi.md#login_oauth_token_post) | **POST** /login/oauth/token | Get JWT for API Keys
[**login_providers_get**](LoginApi.md#login_providers_get) | **GET** /login/providers | Returns a list of social providers
[**login_token_post**](LoginApi.md#login_token_post) | **POST** /login/token | Endpoint to get a new refresh token


# **login_authorize_callback_get**
> Error login_authorize_callback_get(state, opts)

Endpoint call via a social login oauth2 callback

Callback for OAuth2 Social logins

### Example
```ruby
# load the gem
require 'logface_client'

api_instance = LogfaceClient::LoginApi.new

state = "state_example" # String | 

opts = { 
  code: "code_example", # String | 
  token: "token_example" # String | 
}

begin
  #Endpoint call via a social login oauth2 callback
  result = api_instance.login_authorize_callback_get(state, opts)
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling LoginApi->login_authorize_callback_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**|  | 
 **code** | **String**|  | [optional] 
 **token** | **String**|  | [optional] 

### Return type

[**Error**](Error.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **login_authorize_get**
> Error login_authorize_get(provider, opts)

Endpoint to begin the oauth2 authorization flow

Does the initial social auth redirect

### Example
```ruby
# load the gem
require 'logface_client'

api_instance = LogfaceClient::LoginApi.new

provider = "provider_example" # String | 

opts = { 
  redirect_url: "redirect_url_example" # String | 
}

begin
  #Endpoint to begin the oauth2 authorization flow
  result = api_instance.login_authorize_get(provider, opts)
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling LoginApi->login_authorize_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | **String**|  | 
 **redirect_url** | **String**|  | [optional] 

### Return type

[**Error**](Error.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **login_oauth_revoke_post**
> login_oauth_revoke_post(body)

Revoke a refresh token

Revoke a refresh token

### Example
```ruby
# load the gem
require 'logface_client'

api_instance = LogfaceClient::LoginApi.new

body = LogfaceClient::Body3.new # Body3 | 


begin
  #Revoke a refresh token
  api_instance.login_oauth_revoke_post(body)
rescue LogfaceClient::ApiError => e
  puts "Exception when calling LoginApi->login_oauth_revoke_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body3**](Body3.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **login_oauth_token_post**
> Token login_oauth_token_post(body)

Get JWT for API Keys

Issue a token for an api key

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

api_instance = LogfaceClient::LoginApi.new

body = LogfaceClient::Body4.new # Body4 | 


begin
  #Get JWT for API Keys
  result = api_instance.login_oauth_token_post(body)
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling LoginApi->login_oauth_token_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body4**](Body4.md)|  | 

### Return type

[**Token**](Token.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **login_providers_get**
> Array&lt;SocialProvider&gt; login_providers_get

Returns a list of social providers

Retrieve social providers

### Example
```ruby
# load the gem
require 'logface_client'

api_instance = LogfaceClient::LoginApi.new

begin
  #Returns a list of social providers
  result = api_instance.login_providers_get
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling LoginApi->login_providers_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;SocialProvider&gt;**](SocialProvider.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **login_token_post**
> Token login_token_post(body)

Endpoint to get a new refresh token

Gets the token for a given refresh token

### Example
```ruby
# load the gem
require 'logface_client'

api_instance = LogfaceClient::LoginApi.new

body = LogfaceClient::Body5.new # Body5 | 


begin
  #Endpoint to get a new refresh token
  result = api_instance.login_token_post(body)
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling LoginApi->login_token_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body5**](Body5.md)|  | 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



