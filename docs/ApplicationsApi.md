# LogfaceClient::ApplicationsApi

All URIs are relative to *https://api.logface.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**application_get**](ApplicationsApi.md#application_get) | **GET** /application | Find applications
[**application_id_get**](ApplicationsApi.md#application_id_get) | **GET** /application/{id} | Find an application


# **application_get**
> Array&lt;ApplicationsResponse&gt; application_get(opts)

Find applications

Find many applications

### Example
```ruby
# load the gem
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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **index** | **Integer**| Index of the first event in the set of returned results.  Negative index will count from the end of the results. | [optional] [default to 0]
 **count** | **Integer**| Number of events desired.  Will return fewer if there are fewer to return. | [optional] [default to 10]

### Return type

[**Array&lt;ApplicationsResponse&gt;**](ApplicationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **application_id_get**
> Application application_id_get(id)

Find an application

Find an existing application

### Example
```ruby
# load the gem
require 'logface_client'

api_instance = LogfaceClient::ApplicationsApi.new

id = "id_example" # String | id of the of the application


begin
  #Find an application
  result = api_instance.application_id_get(id)
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling ApplicationsApi->application_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| id of the of the application | 

### Return type

[**Application**](Application.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



