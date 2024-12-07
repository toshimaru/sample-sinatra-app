# frozen_string_literal: true

# ref. https://docs.sentry.io/platforms/ruby/guides/rack/
require 'sentry-ruby'
Sentry.init do |config|
  config.dsn = ENV['SENTRY_DSN']
  config.breadcrumbs_logger = [:sentry_logger, :http_logger]
  config.traces_sample_rate = 1.0
  config.profiles_sample_rate = 1.0
end

require 'sinatra'
use Sentry::Rack::CaptureExceptions

get '/' do
  'Hello world!'
end

get '/hello/:name' do |n|
  "Hello #{n}!"
end
