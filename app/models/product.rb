class Product < ActiveRecord::Base
	#validates :name, presence: true, length: { minimum: 2, maximum: 40}

	#specify additional styles that you want to use in views or eslewhere
  	has_attached_file :image_path, :styles => {:small => "120x120>", :thumb => "250x200#", :medium =>"400>"}
  	has_attached_file :barcode_path, :styles => {:small => "120x120>",:thumb => "200x200>",:medium =>"400>"}
  	has_many :cart
  	validates_attachment_content_type :image_path, :content_type => /\Aimage\/.*\Z/
  	validates_attachment_content_type :barcode_path, :content_type => /\Aimage\/.*\Z/

  	validates :name, :price,:for_sex,:item_type, presence:true




  	
	validates_attachment :image_path, content_type: { content_type: /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)/ }
	validates_attachment :barcode_path, content_type: { content_type: /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)/ }
	validates_attachment_content_type :barcode_path, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	module SystemDefaults

    CURRENCY = "NGN" #€ ₵
    	MALET = "Male Top"
		FMALET = "Female Top"
		
		LETTERSIZE = "Letter Size"
		NUMBERSIZE = "Number Size"
		SIZES = {"XS"=>"XS","S"=>"S","M"=>"M","L"=>"L","XL"=>"XL","XXL"=>"XXL","XXXL"=>"XXXL",6=>6,8=>8,10=>10,12=>12,14=>14,16=>16,18=>18,20=>20}
		COLORS={"Red"=>"Red","Matte Black"=>"Matte Black","Blue"=>"Blue","Brown"=>"Brown","Grey"=>"Grey","Pink"=>"Pink","Black"=>"Black","Cream"=>"Cream", "White"=>"White"}
   	ITEM_TYPES_VAL = {"Male Top" =>1, "Female Top" =>2, "Dress"=>3, "Pants"=>4, "Polo"=>5, "Face Cap"=>6, "Bag"=>7}
  end

  def admin? #role stuff
  	self.email == "Roleadmin@rmail.com"
  end

end
