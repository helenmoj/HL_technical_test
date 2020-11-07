#require 'rspec'
#require 'selenium-webdriver'
#require 'net/http'


require 'watir'
require 'page-object'


Before do
  @browser = Watir::Browser.new :chrome
  #@browser = Selenium::WebDriver.new :chrome
  #@browser = Selenium::WebDriver.for :Chrome
  @browser.window.maximize
end

#def scroll_to(element)
 # Utils.scroll_into_view(element)
 # element
#end

After do |scenario|
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

#After do
#  @browser.close
  #@browser.quit
#end

#at_exit do
 # browser.quit
#end