=begin
#FireFawkes Developer API

#External Facing Developer API 

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module LogfaceClient
  class IdentityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete API Key
    # Delete the API Key
    # @param client_id the client ID of the API Key to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def account_api_keys_client_id_delete(client_id, opts = {})
      account_api_keys_client_id_delete_with_http_info(client_id, opts)
      return nil
    end

    # Delete API Key
    # Delete the API Key
    # @param client_id the client ID of the API Key to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def account_api_keys_client_id_delete_with_http_info(client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IdentityApi.account_api_keys_client_id_delete ..."
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling IdentityApi.account_api_keys_client_id_delete"
      end
      # resource path
      local_var_path = "/account/apiKeys/{client_id}".sub('{' + 'client_id' + '}', client_id.to_s)

      # query parameters
      query_params = {}

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityApi#account_api_keys_client_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get API Key
    # Retrieve the api key for the current account, specified by ID
    # @param client_id the client ID to retrieve
    # @param [Hash] opts the optional parameters
    # @return [ApiKeyResponse]
    def account_api_keys_client_id_get(client_id, opts = {})
      data, _status_code, _headers = account_api_keys_client_id_get_with_http_info(client_id, opts)
      return data
    end

    # Get API Key
    # Retrieve the api key for the current account, specified by ID
    # @param client_id the client ID to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiKeyResponse, Fixnum, Hash)>] ApiKeyResponse data, response status code and response headers
    def account_api_keys_client_id_get_with_http_info(client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IdentityApi.account_api_keys_client_id_get ..."
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling IdentityApi.account_api_keys_client_id_get"
      end
      # resource path
      local_var_path = "/account/apiKeys/{client_id}".sub('{' + 'client_id' + '}', client_id.to_s)

      # query parameters
      query_params = {}

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
        :return_type => 'ApiKeyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityApi#account_api_keys_client_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the API Key
    # Enable/Disable the API Key
    # @param client_id the client ID of the API to update
    # @param [Hash] opts the optional parameters
    # @option opts [Body2] :body 
    # @return [ApiKeyResponse]
    def account_api_keys_client_id_put(client_id, opts = {})
      data, _status_code, _headers = account_api_keys_client_id_put_with_http_info(client_id, opts)
      return data
    end

    # Update the API Key
    # Enable/Disable the API Key
    # @param client_id the client ID of the API to update
    # @param [Hash] opts the optional parameters
    # @option opts [Body2] :body 
    # @return [Array<(ApiKeyResponse, Fixnum, Hash)>] ApiKeyResponse data, response status code and response headers
    def account_api_keys_client_id_put_with_http_info(client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IdentityApi.account_api_keys_client_id_put ..."
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling IdentityApi.account_api_keys_client_id_put"
      end
      # resource path
      local_var_path = "/account/apiKeys/{client_id}".sub('{' + 'client_id' + '}', client_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiKeyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityApi#account_api_keys_client_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get API Keys
    # Retrieve the api keys for the current account
    # @param [Hash] opts the optional parameters
    # @return [ApiKeysResponse]
    def account_api_keys_get(opts = {})
      data, _status_code, _headers = account_api_keys_get_with_http_info(opts)
      return data
    end

    # Get API Keys
    # Retrieve the api keys for the current account
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiKeysResponse, Fixnum, Hash)>] ApiKeysResponse data, response status code and response headers
    def account_api_keys_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IdentityApi.account_api_keys_get ..."
      end
      # resource path
      local_var_path = "/account/apiKeys"

      # query parameters
      query_params = {}

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
        :return_type => 'ApiKeysResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityApi#account_api_keys_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # New API Key
    # Create a new API Key
    # @param [Hash] opts the optional parameters
    # @option opts [Body1] :body 
    # @return [ApiKeyResponse]
    def account_api_keys_post(opts = {})
      data, _status_code, _headers = account_api_keys_post_with_http_info(opts)
      return data
    end

    # New API Key
    # Create a new API Key
    # @param [Hash] opts the optional parameters
    # @option opts [Body1] :body 
    # @return [Array<(ApiKeyResponse, Fixnum, Hash)>] ApiKeyResponse data, response status code and response headers
    def account_api_keys_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IdentityApi.account_api_keys_post ..."
      end
      # resource path
      local_var_path = "/account/apiKeys"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiKeyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityApi#account_api_keys_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Accounts represent individuals
    # Retrieve an account
    # @param [Hash] opts the optional parameters
    # @return [AccountResponse]
    def account_get(opts = {})
      data, _status_code, _headers = account_get_with_http_info(opts)
      return data
    end

    # Accounts represent individuals
    # Retrieve an account
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountResponse, Fixnum, Hash)>] AccountResponse data, response status code and response headers
    def account_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IdentityApi.account_get ..."
      end
      # resource path
      local_var_path = "/account"

      # query parameters
      query_params = {}

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
        :return_type => 'AccountResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityApi#account_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set whether the TOS has been agreed to
    # Update the TOS boolean for an account
    # @param [Hash] opts the optional parameters
    # @option opts [Body] :body 
    # @return [AccountResponse]
    def account_put(opts = {})
      data, _status_code, _headers = account_put_with_http_info(opts)
      return data
    end

    # Set whether the TOS has been agreed to
    # Update the TOS boolean for an account
    # @param [Hash] opts the optional parameters
    # @option opts [Body] :body 
    # @return [Array<(AccountResponse, Fixnum, Hash)>] AccountResponse data, response status code and response headers
    def account_put_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IdentityApi.account_put ..."
      end
      # resource path
      local_var_path = "/account"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AccountResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityApi#account_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get tenants
    # Get all tenants for a user
    # @param [Hash] opts the optional parameters
    # @return [Array<Tenant>]
    def tenants_get(opts = {})
      data, _status_code, _headers = tenants_get_with_http_info(opts)
      return data
    end

    # Get tenants
    # Get all tenants for a user
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Tenant>, Fixnum, Hash)>] Array<Tenant> data, response status code and response headers
    def tenants_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IdentityApi.tenants_get ..."
      end
      # resource path
      local_var_path = "/tenants"

      # query parameters
      query_params = {}

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
        :return_type => 'Array<Tenant>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityApi#tenants_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a tenant
    # Add a new tenant and assign to the user
    # @param [Hash] opts the optional parameters
    # @option opts [Body6] :body 
    # @return [Tenant]
    def tenants_post(opts = {})
      data, _status_code, _headers = tenants_post_with_http_info(opts)
      return data
    end

    # Add a tenant
    # Add a new tenant and assign to the user
    # @param [Hash] opts the optional parameters
    # @option opts [Body6] :body 
    # @return [Array<(Tenant, Fixnum, Hash)>] Tenant data, response status code and response headers
    def tenants_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IdentityApi.tenants_post ..."
      end
      # resource path
      local_var_path = "/tenants"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Tenant')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IdentityApi#tenants_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
