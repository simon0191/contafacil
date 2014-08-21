class RegistriesController < ApplicationController
	before_action :skip_navbar

	helper_method :get_accounts_by_type

	def company_registry

	end
	def accounts_registry
		@accounts = Account.all
	end

	private
	def skip_navbar
		@skip_navbar = true
	end

	def get_accounts_by_type(account_type)
		Account.where account_type: account_type
	end
end
