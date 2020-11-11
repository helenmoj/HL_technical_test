class Home

  def initialize(browser)
    @browser = browser
  end

  def visit_home_site
   @browser.goto('https://the-internet.herokuapp.com')
  end
end