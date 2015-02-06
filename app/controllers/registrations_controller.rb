class RegistrationsController < Devise::RegistrationsController
	
 # GET /products/new
   def new
    super

  end

  def create
 #	@user = User.new(sign_up_params)
 #	respond_to do |format|
 #		if @user.save
 #       format.html { redirect_to @user, notice: 'Product was successfully created.' }
 #       #format.json { render :show, status: :created, location: @product }
 #       UserMailer.welcome_email(@user).deliver
 #     else
 #       format.html { render :new }
        #format.json { render json: @product.errors, status: :unprocessable_entity }
 #     end
 #  end



	uri = URI.parse("http://captureithack.pythonanywhere.com/user/new")

	http = Net::HTTP.new(uri.host, uri.port)

	request = Net::HTTP::Post.new(uri.request_uri)
	request.set_form_data({"username" => "ayo","email" => "ayo@mal","password" => "love" })
	#http.use_ssl = true
	response = http.request(request)
	res=  response.body
	# require 'json'
	res = JSON.parse res


 		respond_to do |format|
      if response == 101
        format.html { redirect_to dashboard_welcome_path, notice: res+'Welcome' }
        UserMailer.welcome_email(@user).deliver
      else
        format.html { redirect_to  dashboard_welcome_path, notice: res}
        #format.html { redirect_to dashboard_welcome, notice: res+"Login Failed"}
        #format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end

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
