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

# Unit tests for LogfaceClient::TimeRange
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TimeRange' do
  before do
    # run before each test
    @instance = LogfaceClient::TimeRange.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TimeRange' do
    it 'should create an instance of TimeRange' do
      expect(@instance).to be_instance_of(LogfaceClient::TimeRange)
    end
  end
  describe 'test attribute "earliest"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "latest"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

