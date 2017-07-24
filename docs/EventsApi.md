# LogfaceClient::EventsApi

All URIs are relative to *https://api.logface.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**events**](EventsApi.md#events) | **POST** /events | Send events
[**events_get**](EventsApi.md#events_get) | **GET** /events | Retrieve matching events


# **events**
> EventsReturn events(events, opts)

Send events

This endpoint is used to send data in the form of 'events' to the log service. Events have optional metadata.

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

api_instance = LogfaceClient::EventsApi.new

events = LogfaceClient::Events.new # Events | 

opts = { 
  input: "events" # String | 
}

begin
  #Send events
  result = api_instance.events(events, opts)
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling EventsApi->events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **events** | [**Events**](Events.md)|  | 
 **input** | **String**|  | [optional] [default to events]

### Return type

[**EventsReturn**](EventsReturn.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **events_get**
> QueryResponse events_get(opts)

Retrieve matching events

This endpoint allows for retrieving events based on an SPL query. SPL Reference -- http://docs.splunk.com/Documentation/Splunk/latest/SearchReference/WhatsInThisManual 

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

api_instance = LogfaceClient::EventsApi.new

opts = { 
  context_id: "_default", # String | 
  keywords: "", # String | Whitespace separated keywords
  transform: "", # String | event-by-event transformations
  report: "", # String | report aggregations
  cache: "cache_example", # String | Contains the search jobID
  count: 10, # Integer | Maximum number of entries to return. Will return fewer if there are fewer to return. Set value to -1 to get all available entries.
  index: 0 # Integer | Index of first item to return.
}

begin
  #Retrieve matching events
  result = api_instance.events_get(opts)
  p result
rescue LogfaceClient::ApiError => e
  puts "Exception when calling EventsApi->events_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **context_id** | **String**|  | [optional] [default to _default]
 **keywords** | **String**| Whitespace separated keywords | [optional] [default to ]
 **transform** | **String**| event-by-event transformations | [optional] [default to ]
 **report** | **String**| report aggregations | [optional] [default to ]
 **cache** | **String**| Contains the search jobID | [optional] 
 **count** | **Integer**| Maximum number of entries to return. Will return fewer if there are fewer to return. Set value to -1 to get all available entries. | [optional] [default to 10]
 **index** | **Integer**| Index of first item to return. | [optional] [default to 0]

### Return type

[**QueryResponse**](QueryResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



