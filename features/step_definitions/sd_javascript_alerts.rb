
And 'I click the JS Confirm button' do
 @javascript_alert = Javascript.new(@browser)
  @javascript_alert.select_js_confirm_button
end

When'I click the JS alert button' do
  @javascript_alert = Javascript.new(@browser)
  @javascript_alert.select_js_alert_button
end

When'I click the JS prompt button' do
  @javascript_alert = Javascript.new(@browser)
  @javascript_alert.select_j_prompt_button
end


When 'I select ok on the js alert' do
@javascript_alert.js_ok
end

When'I select cancel on the js alert' do
@javascript_alert.js_cancel
end

When'I input text' do
  @javascript_alert.js_prompt_input
end

Then'the result is {string}' do |data|
  # moved all the js results into one method to repetition of code
  @javascript_alert.js_confirm_ok
  @javascript_alert.js_confirm_cancel
  @javascript_alert.js_alert_ok
  @javascript_alert.js_prompt_input_ok
  @javascript_alert.js_prompt_blank
  @javascript_alert.js_prompt_null
end





