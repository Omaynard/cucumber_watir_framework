Given(/^I access the BBC home page$/) do
  home_page.visit
end

And(/^I access the sign in page$/) do
  home_page.click_sign_in_link
end

When(/^I select register$/) do
 sign_in_page.click_register_link
end

And(/^I input my date of birth$/) do
  register_page.enter_dob(15,'September',1995)
end

And(/^I input necessary register details with the password details (.*)$/) do |password|
 register_user_page.enter_user_details(password)
end

Then(/^I receive the correct error (.+)$/) do |error_message|
  register_user_page.error(error_message)
  
end

