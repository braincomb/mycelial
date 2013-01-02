class HomeController < ApplicationController
	before_filter :authenticate
	caches_action :index

	def index
		sleep 2
	end

	protected

	def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "damian" && password == "shroom"
    end
  end
end
