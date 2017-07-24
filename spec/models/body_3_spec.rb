=begin
#FireFawkes Developer API

#External Facing Developer API 

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for LogfaceClient::Body3
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Body3' do
  before do
    # run before each test
    @instance = LogfaceClient::Body3.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Body3' do
    it 'should create an instance of Body3' do
      expect(@instance).to be_instance_of(LogfaceClient::Body3)
    end
  end
  describe 'test attribute "refresh_token"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

