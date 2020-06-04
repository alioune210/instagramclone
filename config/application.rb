require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Instagramclone
  class Application < Rails::Application
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    #config.i18n.default_locale = :fr
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.generators do |g|
      # These two lines create a setting that is not automatically generated.
      g.assets false
      g.helper false
    end
  end
end
