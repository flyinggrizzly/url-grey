require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module UrlGrey
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Customize your application's name
    config.application_name = 'URL Grey'

    # Optionally set '/' as a short URL
    config.root_redirect_enabled  = true
    config.root_redirect_url      = 'http://flyinggrizzly.io'

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
