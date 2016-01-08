require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Lasag
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
    config.middleware.use ActionDispatch::Flash
    config.assets.enabled = true
 config.assets.paths << "#{Rails.root}/app/assets/fonts"
 {"mode":"basic","formats":["ttf","woff","woff2","eotz"],"tt_instructor":"default","fix_gasp":"xy","fix_vertical_metrics":"Y","metrics_ascent":"","metrics_descent":"","metrics_linegap":"","add_spaces":"Y","add_hyphens":"Y","fallback":"none","fallback_custom":"100","options_subset":"basic","subset_custom":"","subset_custom_range":"","subset_ot_features_list":"","css_stylesheet":"stylesheet.css","filename_suffix":"-webfont","emsquare":"2048","spacing_adjustment":"0"}
  end
end
