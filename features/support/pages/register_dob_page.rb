class RegisterDobpage

	def initialize(browser)
		@driver = browser
	end

	def enter_dob(day,month,year)
		@driver.text_field(id: 'day-input').set(day)
		@driver.text_field(id: 'month-input').set(month)
		@driver.text_field(id: 'year-input').set(year)
		@driver.button(text: 'Next').click
	end
end