
And 'I click example two' do
  @dyn_loaded = DynamicallyLoaded.new(@browser)
  @dyn_loaded.click_example_two
end

And'I see the text {string} is displayed' do |string|
  @dyn_loaded.rendered_after_fact_text
end


And 'I click example one' do
  @dyn_loaded = DynamicallyLoaded.new(@browser)
  @dyn_loaded.click_example_one
end

And 'I see the text {string}' do |string|
  @dyn_loaded.element_on_page_hidden_text
end


And'I select the start button' do
  @dyn_loaded.start_button_select
end

When 'The loading bar has disappeared' do
  # Confirm Loading bar is visible immediately after clicking start
   @dyn_loaded.check_loading_bar_visible.eql? true
   # Added a small 'sleep' to ensure the page will load
   sleep 2
   # Confirm Loading bar is not visible a while after clicking start
   @dyn_loaded.check_loading_bar_visible.eql? false
end


Then'{string} is displayed' do |verify|
  # Added a small 'sleep' to ensure the hello world message has time to display
  sleep 2
  @dyn_loaded.check_hello_world
  end

