
Given 'I enter correct details' do
  @user = Authentication.new(@browser)
  # input valid user data
  @user.input_valid_user
  # input valid password data
  @user.input_valid_password
end

Given'I enter incorrect details' do
  @user = Authentication.new(@browser)
  @user.input_invalid_user
  # input invalid user data
  @user.input_invalid_password
  # input invalid password data
end


When 'I select the login button' do
  @user.select_login
end

Then 'the user successfully logs into the account' do
  # user will be taken into the account
@user.secure_account
end

Then'the user will see an error message' do
  # user will not be taken to the account & will instead see an error message.
@user.error_message
end

