module DashboardHelper

	def totalProducts()

			allP = Product.select("id")
			total = allP.size
			
	end


end
