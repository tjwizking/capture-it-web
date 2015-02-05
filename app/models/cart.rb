class Cart < ActiveRecord::Base
	belongs_to :product
  belongs_to :user

	
	module CartOps

	  	def AddToCart(prod_id)

	  			#check if item available for checkout
	  			ci = Cart.new
				  ci.product_id = prod_id

				  isCheckout = Cart.where("product_id = ?", prod_id).where("status=?", "0")

				  if (isCheckout.size == 0) # item is being added first time
				  	#binding.pry
				  	ci.quantity =1
				  	ci.user_id = current_user.id
				  	ci.session_id = session.id
				  	ci.save
				  elsif (isCheckout.size > 0) # item has been added before
				  	#binding.pry
				  	#check if sales belongs to current users and session, then save!
				  	thisItem = Cart.find_by(product_id: prod_id)
				  	#isYours = Cart.where("session_id = ?",thisItem.session_id).where("user_id=?",thisItem.current_user.id)
				  	if (thisItem.session_id == session.id && thisItem.user_id == current_user.id) #if item added by previosly by user
				  		#add one more
				  		thisItem.update(quantity: thisItem.quantity + 1)	
				  	else
				  	end
				  			
				  end
				  		


			 		
		end	

		def closeSale
			
			#binding.pry
			cid = Cart.select("status").where("session_id= ?", session.id).where("user_id = ?", current_user).where("status = ?", "0").update_all(:status => "1")
			#cid.all.status = 1
			#cid.status=1
			
  			#cid.update(:status)

		end

		def cancelSale
			
			#binding.pry
			cid = Cart.select("status").where("session_id= ?", session.id).where("user_id = ?", current_user).where("status = ?", "0").update_all(:status => "1")
			#cid.all.status = 1
			#cid.status=1
			
  			#cid.update(:status)

		end

		def getCartItems
			@carti = Cart.new
			@carti =  Cart.where("session_id = ?", session.id).where("status = ?", "0" )
		end


		def CartTotal(sess_id)
			s = Cart.where("session_id = ?", sess_id)
			s.size
		end
	 

	end

end

 	