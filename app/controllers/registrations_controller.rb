class RegistrationsController < Devise::RegistrationsController
	
 # GET /products/new
   def new
    super

  end

  def create
 
 		
	uri = URI.parse("http://text-processing.com/api/sentiment/")

	http = Net::HTTP.new(uri.host, uri.port)

	request = Net::HTTP::Post.new(uri.request_uri)
	request.set_form_data({"text" => "love"})

	response = http.request(request)
   
  
 format.html { render :new }
   end
  def update
    super
  end

	 private
 

  


  def sign_up_params
    params.require(:user).permit(:BrandName, :email, :password, :password_confirmation,:logo)
  end
 
  def account_update_params
    params.require(:user).permit(:BrandName, :email, :current_password,:logo)
  end
end
