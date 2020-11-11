
require 'watir'


Before do
  @browser = Watir::Browser.new :chrome#, headless: true
  @browser.window.maximize
end


def scroll_to(element)
  Utils.scroll_into_view(element)
  element
end

After do |scenario|
  # if fails then have a folder created 'screenshots' which will show details of failing scenarios.
  if scenario.failed?
    screenshot_dir = 'screenshots'
    Dir.mkdir(screenshot_dir) unless File.directory?(screenshot_dir)
    filename = "./#{screenshot_dir}/error-#{scenario.name}-#{Time.now}.png"
    @browser.driver.save_screenshot(filename)
    embed(filename, 'image/png')
  end
end


After do
  @browser.close
end
