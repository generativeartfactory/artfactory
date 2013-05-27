require File.expand_path('../boot', __FILE__)

require 'rails/all'

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env) if defined?(Bundler)

module Links
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]
    
    # note: from initialzizers/secret_token.rb
    config.secret_token = 'e4f3976e9548182c4ce7d38482a6a0c0aa13a8cbadeca10e0efa61e2bc78171d224011ac2a582404cf4cd7d918cb70abc65a816ecb0e774feedb98c6cd691a3b'

    # note: from initializers/session_store.rb
    config.session_store :cookie_store, :key => '_links_session'
  end # class Application
end  # module Links