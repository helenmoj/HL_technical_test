class DynamicallyLoaded

 # attr_reader :@browser

 def initialize(browser)
   @browser = browser
  end

  #fields
  def dynamic_loading_link
    @browser.link(href: "/dynamic_loading").wait_until(timeout: 15, &:present?)
  end

  def start_button
    @browser.button(visible_text: /Start/)
  end

 def rendered_after_fact_text
   @browser.h4(visible_text: /Example 2: Element rendered after the fact/).exists?
 end

 def element_on_page_hidden_text
   @browser.h4(visible_text: /Example 1: Element on page that is hidden/).exists?
 end

  def select_example_one
    @browser.link(:xpath => "//*[@id='content']/div/a[1]")
  end

  def select_example_two
    @browser.link(:xpath => "//*[@id='content']/div/a[2]")
  end

 def check_loading_bar_visible
 @browser.div(visible_text:/Loading.../)
 end

  def hello_world
    @browser.div(id:"finish")
    @browser.h4(visible_text: /Hello World/)
  end

  # Actions
  def select_dynamic_loading_link
    dynamic_loading_link.click
  end

  def click_example_one
    select_example_one.click
  end

  def click_example_two
    select_example_two.click
  end

  def start_button_select
    start_button.click
   # element_on_page_hidden.click
  end

  def check_hello_world
    hello_world.exists?
  end
end

