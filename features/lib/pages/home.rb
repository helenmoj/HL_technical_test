class Home

  def initialize(browser)
    @browser = browser
  end

  def visit_home_site
    @browser.goto('https://the-internet.herokuapp.com')
  end

  #fields

 # def drop_down_link
  #  @browser.link(href: "/dropdown").wait_until(timeout: 15, &:present?)
  #end

  # Actions
end