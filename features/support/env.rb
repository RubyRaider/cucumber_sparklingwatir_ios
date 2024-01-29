require 'tmpdir'
require_relative '../../helpers/allure_helper'
require_relative '../../helpers/driver_helper'

include DriverHelper

Before do
  AllureHelper.configure
  app
end

After do |scenario|
  Dir.mktmpdir do |temp_folder|
    screenshot = app.screenshot.save("#{temp_folder}/#{scenario.name}.png")
    AllureHelper.add_screenshot(scenario.name, screenshot)
  end
  app.close
end
