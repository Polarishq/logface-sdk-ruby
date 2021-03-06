=begin
#FireFawkes Developer API

#External Facing Developer API 

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module LogfaceClient
  class EventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Send events
    # This endpoint is used to send data in the form of 'events' to the log service. Events have optional metadata.
    # @param events 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :input  (default to events)
    # @return [EventsReturn]
    def events(events, opts = {})
      data, _status_code, _headers = events_with_http_info(events, opts)
      return data
    end

    # Send events
    # This endpoint is used to send data in the form of &#39;events&#39; to the log service. Events have optional metadata.
    # @param events 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :input 
    # @return [Array<(EventsReturn, Fixnum, Hash)>] EventsReturn data, response status code and response headers
    def events_with_http_info(events, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EventsApi.events ..."
      end
      # verify the required parameter 'events' is set
      if @api_client.config.client_side_validation && events.nil?
        fail ArgumentError, "Missing the required parameter 'events' when calling EventsApi.events"
      end
      # resource path
      local_var_path = "/events"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'input'] = opts[:'input'] if !opts[:'input'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(events)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'EventsReturn')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve matching events
    # This endpoint allows for retrieving events based on an SPL query. SPL Reference -- http://docs.splunk.com/Documentation/Splunk/latest/SearchReference/WhatsInThisManual 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context_id  (default to _default)
    # @option opts [String] :keywords Whitespace separated keywords (default to )
    # @option opts [String] :transform event-by-event transformations (default to )
    # @option opts [String] :report report aggregations (default to )
    # @option opts [String] :cache Contains the search jobID
    # @option opts [Integer] :count Maximum number of entries to return. Will return fewer if there are fewer to return. Set value to -1 to get all available entries. (default to 10)
    # @option opts [Integer] :index Index of first item to return. (default to 0)
    # @return [QueryResponse]
    def events_get(opts = {})
      data, _status_code, _headers = events_get_with_http_info(opts)
      return data
    end

    # Retrieve matching events
    # This endpoint allows for retrieving events based on an SPL query. SPL Reference -- http://docs.splunk.com/Documentation/Splunk/latest/SearchReference/WhatsInThisManual 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context_id 
    # @option opts [String] :keywords Whitespace separated keywords
    # @option opts [String] :transform event-by-event transformations
    # @option opts [String] :report report aggregations
    # @option opts [String] :cache Contains the search jobID
    # @option opts [Integer] :count Maximum number of entries to return. Will return fewer if there are fewer to return. Set value to -1 to get all available entries.
    # @option opts [Integer] :index Index of first item to return.
    # @return [Array<(QueryResponse, Fixnum, Hash)>] QueryResponse data, response status code and response headers
    def events_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EventsApi.events_get ..."
      end
      # resource path
      local_var_path = "/events"

      # query parameters
      query_params = {}
      query_params[:'context_id'] = opts[:'context_id'] if !opts[:'context_id'].nil?
      query_params[:'keywords'] = opts[:'keywords'] if !opts[:'keywords'].nil?
      query_params[:'transform'] = opts[:'transform'] if !opts[:'transform'].nil?
      query_params[:'report'] = opts[:'report'] if !opts[:'report'].nil?
      query_params[:'cache'] = opts[:'cache'] if !opts[:'cache'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'index'] = opts[:'index'] if !opts[:'index'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'QueryResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#events_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
