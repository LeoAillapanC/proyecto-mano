class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    validates_presence_of :nombre
    validates :telefono, numericality: {greater_than: 0, only_integer: true }
  	has_many :products
	def orders
		MyPayment.joins(:products)
			.joins("LEFT JOIN users ON products.user_id = users.id")
			.where(users:{id: self.id})

  	end
end
 