class User < ActiveRecord::Base
#	attr_accessible :email, :password, :password_confirmation, :remember_me, :brand_name
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

        has_attached_file :logo,
        									:url => ":retailstarfiles.s3.amazonaws.com",
        									:styles => {:small => "128x128>", :medium => "250x200#", :large =>"400>"}
                  				
        									
  		validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
  			
end
