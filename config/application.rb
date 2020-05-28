require_relative 'boot'
require 'active_support/core_ext/string/conversions'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
# require "action_mailer/railtie"
require "action_view/railtie"
# require "action_cable/engine"
require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Workbook
  class Application < Rails::Application
    config.hosts << "3000-d37af591-0094-4927-91f2-18c50b3b41f6.ws-us02.gitpod.io"
    config.load_defaults 6.0
    config.site = config_for(:site) rescue nil
    config.book = YAML.load_file(File.join(Rails.root, 'books', config.site['book'], 'config.yml'))
    puts config.site.inspect
    puts config.book.inspect
    version_date = Rails.env.production? ? File.mtime('.') : `git log -1 --format=%cd`.chomp.to_datetime
    config.version = version_date.in_time_zone('Central Time (US & Canada)').strftime("%Y-%m-%d %H:%M %Z")
  end
end
