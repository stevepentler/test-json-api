ENV['RACK_ENV'] ||= 'development'
require 'bundler/setup'
Bundler.require :default

require_relative './lib/models'
require_relative './app/apis/main'
