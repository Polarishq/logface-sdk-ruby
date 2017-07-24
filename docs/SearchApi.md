# LogfaceClient::SearchApi

All URIs are relative to *https://api.logface.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search_post**](SearchApi.md#search_post) | **POST** /search | Retrieve matching events


# **search_post**
> QueryResponse search_post(query, tenant_id)

Retrieve matching events

This endpoint allows for retrieving events based on an SPL query. SPL Reference -- http://docs.splunk.com/Documentation/Splunk/latest/SearchReference/WhatsInThisManual 

### Example
```ruby
# load the gem
require 'logface_client'

api_instance = LogfaceClient::SearchApi.new

query = LogfaceClient::QueryInfo.new # QueryInfo | 

tenant_id = "tenant_id_example" # String | ID of the tenant


begin
  #Retrieve matching events
  result = api_instance.search_post(query, tenant_id)
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling SearchApi->search_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**QueryInfo**](QueryInfo.md)|  | 
 **tenant_id** | **String**| ID of the tenant | 

### Return type

[**QueryResponse**](QueryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



