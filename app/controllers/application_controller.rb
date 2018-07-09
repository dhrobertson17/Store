class ApplicationController < ActionController::Base

	before_action :categories, :brand

	def categories
		@categories = Category.order(:name)
	end

	def brands
		@brands = Product.pluck(:brand).sort.uniq
	end

end
