# frozen_string_literal: true
require 'yaml'
require 'sparkling_watir'

module DriverHelper
    def app
      @app ||= create_app
    end

  private

  def create_app
    @app = SparklingWatir::App.new(caps: caps)
  end

  # :reek:UtilityFunction
  def caps
    YAML.load_file('config/capabilities.yml')
  end
end
