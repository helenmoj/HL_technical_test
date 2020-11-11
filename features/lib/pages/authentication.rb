class Authentication

  def initialize(browser)
    @browser = browser
  end

  #fields
  def authentication_link
    @browser.link(href: "/login").wait_until(timeout: 15, &:present?)
  end

  def login_button
    @browser.button(visible_text: /Login/)
  end

  def secure_account
    @browser.div(visible_text: /Welcome to the Secure Area. When you are done click logout below./).exists?
    @browser.button(visible_text: /Logout/).exists?
  end

  def error_message
    @browser.div(id:"flash-messages").exists?
    @browser.div(visible_text: /Your username is invalid!/)
  end

  # Actions
  def select_authentication_link
    authentication_link.click
  end

  def input_valid_user
    @browser.input(id:"username").send_keys("tomsmith")
  end

  def input_invalid_user
    @browser.input(id: "username").send_keys("suesmith")
  end

  def input_valid_password
    @browser.input(id:"password").send_keys("SuperSecretPassword!")
  end

  def input_invalid_password
    @browser.input(id:"password").send_keys("SuperOpenPassword!")
  end

  def select_login
    login_button.click
  end
end

