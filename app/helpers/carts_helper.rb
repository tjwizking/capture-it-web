module CartsHelper

	def add_to_cart_link(prod_id)

		button_to('', new_cart_path(prod_id), :method => :post, :class => 'icon-large icon-cart-in', :style=>' float:right;border:none; background-color:transparent;top:2px;')

	end

	def CartTotal(sess_id)

			s = Cart.select("quantity").where("session_id = ?", sess_id).where("status = ?", "0")
			total = s.sum(:quantity)
			
	end

	def sumCartPrice(carti)
		ptot=[]
		carti.each_with_index do |crt,i| 
					if crt.quantity == 1 
          	ptot<< crt.product.try(:price)
          elsif crt.quantity > 1
          	ptot << crt.product.try(:price) * crt.quantity
          	
          end 
     end
         ptot.sum
           
	end



end

