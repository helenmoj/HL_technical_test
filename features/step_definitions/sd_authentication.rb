require 'pry'

And 'I enter the details provided' do
  @user = Authentication.new(@browser)
  @user.input_valid_user
  @user.input_valid_password
end

When'I enter incorrect details' do
  @user = Authentication.new(@browser)
  @user.input_invalid_user
  @user.input_invalid_password
end


When 'I select the login button' do
  @user.select_login
end

Then 'the user successfully logs into the account' do
@user.secure_account
end

Then'the user will see an error message' do
@user.error_message
end

