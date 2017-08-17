require_relative 'pages/Homepage'
require_relative 'pages/sign_in_page'
require_relative 'pages/register_dob_page'
require_relative 'pages/register_user_page'

module BbcSite

	def home_page
		Homepage.new(@driver)
	end
	
	def sign_in_page
		SignInPage.new(@driver)
	end

	def register_page
		RegisterDobpage.new(@driver)
	end

	def register_user_page
		RegisterUserpage.new(@driver)
	end




end