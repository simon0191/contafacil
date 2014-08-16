class RegistriesController < ApplicationController
	before_action :skip_navbar
	def company_registry
		
	end
	def accounts_registry

	end

	private
	def skip_navbar
		@skip_navbar = true
	end
end
