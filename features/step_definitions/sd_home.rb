#require_relative '../../../../Helen Rubymine project/Hargraves-Lansdown-Test/features/lib/pages/dynamic_loading.rb'
#require_relative '../../../../Helen Rubymine project/Hargraves-Lansdown-Test/features/lib/pages/home.rb'

Given /^I reach the internet page$/  do
  @home_site = Home.new(@browser)
  @home_site.visit_home_site
  end

  And 'I select dynamic loading' do
    @dynamically_loaded = DynamicallyLoaded.new(@browser)
    @dynamically_loaded.select_dynamic_loading_link
  end

When 'I select form authentication' do
  @authentication = Authentication.new(@browser)
  @authentication.select_authentication_link
end

When'I select javascript alerts' do
  @js_alerts = Javascript.new(@browser)
  @js_alerts.select_js_alert
end

