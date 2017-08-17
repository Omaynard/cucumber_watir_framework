class RegisterUserpage
	

	def initialize(browser)
		@driver = browser
	end

	def enter_user_details(password)
		 @driver.text_field(id: 'email-input').set('test@gmail')
		 @driver.text_field(id: 'password-input').set(password)
		 @driver.text_field(id: 'postcode-input').set('ajds 647')
	end

	def error(error_message)
		@driver.element(id: 'form-error-password').text == error_message
	end

end