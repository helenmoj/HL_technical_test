class Javascript

  def initialize(browser)
    @browser = browser
  end


  #fields
  def js_alert_link
    @browser.link(href: "/javascript_alerts").wait_until(timeout: 15, &:present?)
  end

  def js_confirm_button
    @browser.button(visible_text: /Click for JS Confirm/)
  end

  def js_alert_button
    @browser.button(visible_text: /Click for JS Alert/)
  end

  def js_prompt_button
    @browser.button(visible_text: /Click for JS Prompt/)
  end

  def js_ok
    @browser.alert.exists?
    @browser.alert.ok
  end

  def js_cancel
    @browser.alert.exists?
    @browser.alert.close
  end

  def js_confirm_ok
    @browser.p(visible_text: /You clicked: Ok/).exists?
  end

  def js_confirm_cancel
    @browser.p(visible_text: /You clicked: Cancel/).exists?
  end

  def js_alert_ok
    # successfully spelt incorrectly on the website so coded how its spelt in order use 'visible text'
    @browser.p(visible_text: /You successfuly clicked an alert/).exists?
  end

  def js_prompt_input
    @browser.alert.exists?
    @browser.alert.set("hello")
  end

  def js_prompt_input_ok
    @browser.p(visible_text: /You entered: hello/).exists?
  end

  def js_prompt_blank
    @browser.p(visible_text: /You entered:/).exists?
  end

  def js_prompt_null
    @browser.p(visible_text: /You entered: null/).exists?
  end

  # Actions
  def select_js_alert
    js_alert_link.click
  end

  def select_js_confirm_button
    js_confirm_button.click
  end

  def select_js_alert_button
    js_alert_button.click
  end

  def select_j_prompt_button
    js_prompt_button.click
  end
end
