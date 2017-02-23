class Mypayment < ApplicationRecord

	belongs_to :shopping_cart
	has_many :products, through: :shopping_cart


end
