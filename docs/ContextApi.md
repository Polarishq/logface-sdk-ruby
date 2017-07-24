# LogfaceClient::ContextApi

All URIs are relative to *https://api.logface.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contexts_id_get**](ContextApi.md#contexts_id_get) | **GET** /contexts/{id} | Retrieve context
[**contexts_post**](ContextApi.md#contexts_post) | **POST** /contexts | Create a search context


# **contexts_id_get**
> SearchContext contexts_id_get(id, tenant_id)

Retrieve context

This endpoint allows for retrieving events based on an SPL query. SPL Reference -- http://docs.splunk.com/Documentation/Splunk/latest/SearchReference/WhatsInThisManual 

### Example
```ruby
# load the gem
require 'logface_client'

api_instance = LogfaceClient::ContextApi.new

id = "id_example" # String | 

tenant_id = "tenant_id_example" # String | ID of the tenant


begin
  #Retrieve context
  result = api_instance.contexts_id_get(id, tenant_id)
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling ContextApi->contexts_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **tenant_id** | **String**| ID of the tenant | 

### Return type

[**SearchContext**](SearchContext.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **contexts_post**
> SearchContext contexts_post(search_context, tenant_id)

Create a search context

### Example
```ruby
# load the gem
require 'logface_client'

api_instance = LogfaceClient::ContextApi.new

search_context = LogfaceClient::SearchContext.new # SearchContext | 

tenant_id = "tenant_id_example" # String | ID of the tenant


begin
  #Create a search context
  result = api_instance.contexts_post(search_context, tenant_id)
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling ContextApi->contexts_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_context** | [**SearchContext**](SearchContext.md)|  | 
 **tenant_id** | **String**| ID of the tenant | 

### Return type

[**SearchContext**](SearchContext.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



