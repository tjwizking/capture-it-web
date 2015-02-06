class DashboardController < ApplicationController
	
def show
end
	def welcome

		uri = URI.parse("http://text-processing.com/api/sentiment/")

	http = Net::HTTP.new(uri.host, uri.port)

	request = Net::HTTP::Post.new(uri.request_uri)
	request.set_form_data({"text" => "love"})
	#http.use_ssl = true
	response = http.request(request)
	res=  response.body
	# require 'json'
	res = JSON.parse res

	res["kind"]

 		respond_to do |format|
      if response == 101
        format.html { redirect_to  dashboard, notice: 'Welcome' }
        UserMailer.welcome_email(@user).deliver
      else
        format.html { redirect_to dashboard, notice: res}
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end

	end
end
