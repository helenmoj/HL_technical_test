require 'pry'

#require_relative '../../../../Helen Rubymine project/Hargreaves-Lansdown-Test/features/lib/pages/javascript_alert.rb'


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



Then'the result displays {string}' do |confirm, cancel|
  @javascript_alert.js_confirm_ok
end

Then'the result shows {string}' do |cancel|
@javascript_alert.js_confirm_cancel
end

Then'the result is {string}' do |ok|
  @javascript_alert.js_alert_ok
end

Then'the result will be {string}' do |input|
  @javascript_alert.js_prompt_input_ok
end

Then'the result will show {string}' do |blank|
  @javascript_alert.js_prompt_blank
end

Then'the result of cancel will be {string}' do |confirm|
  @javascript_alert.js_prompt_null
end




