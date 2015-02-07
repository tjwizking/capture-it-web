class DashboardController < ApplicationController
	
def show
end

	def welcome

	#get the incoming picture

	#get the currents user category - where, query photos, check if n


	uri = URI.parse("https://teamcaptureitapi.herokuapp.com/photos.json")

	http = Net::HTTP.new(uri.host, uri.port)

	request = Net::HTTP::Get.new(uri.request_uri)
	#request.set_form_data({"text" => "love"})
	http.use_ssl = true
	response = http.request(request)
	res=  response.body
	#binding.pry
	# require 'json'
	res = JSON.parse res
	#@testd = res["status"]
	

 		respond_to do |format|
      if response.code == "200"
        format.html { redirect_to  dashboard_welcome_path }
        #UserMailer.welcome_email(@user).deliver
      else
        format.html { redirect_to dashboard_welcome_path, notice: "You ar esikx"}
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end

	end
end
