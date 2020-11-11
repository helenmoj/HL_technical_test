
Given /^I reach the internet page$/  do
  @home_site = Home.new(@browser)
  # navigate to 'https://the-internet.herokuapp.com'
  @home_site.visit_home_site
  end

  And 'I select dynamic loading' do
    @dynamically_loaded = DynamicallyLoaded.new(@browser)
    # select dynamic loading link
    @dynamically_loaded.select_dynamic_loading_link
  end

When 'I select the link form authentication' do
  @authentication = Authentication.new(@browser)
  # select form authentication link
  @authentication.select_authentication_link
end

When'I select javascript alerts' do
  @js_alerts = Javascript.new(@browser)
  # select javascript alert link
  @js_alerts.select_js_alert
end

