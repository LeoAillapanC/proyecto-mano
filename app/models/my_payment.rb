class MyPayment < ApplicationRecord
	belongs_to :shopping_cart
	has_many :products, through: :shopping_cart


	def products_by_user(user)
		self.products.where(products:{user_id:user.id})

	end
end
