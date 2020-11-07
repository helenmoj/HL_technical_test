require 'pry'

#require 'selenium-cucumber'


require_relative '../../../../Helen Rubymine project/Hargreaves-Lansdown-Test/features/lib/pages/dynamic_loading.rb'

And 'I click example two' do
  @example_2 = DynamicallyLoaded.new(@browser)
  @example_2.click_example_two
end

And 'I click example one' do
 @example_1 = DynamicallyLoaded.new(@browser)
  @example_1.click_example_one
end

And'I select the start button' do
  @start_button = DynamicallyLoaded.new(@browser)
  @start_button.start_button_select
end

Then'the loading bar disappears and {string} is displayed' do |verify|
  sleep(10)
  @hello_world = DynamicallyLoaded.new(@browser)
  @hello_world.check_hello_world
  end

