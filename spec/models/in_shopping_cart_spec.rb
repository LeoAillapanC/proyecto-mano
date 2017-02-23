require 'rails_helper'

RSpec.describe InShoppingCart, type: :model do
  it { should belong_to :product }
  it { should belong_to :shopping_cart }
  it {should have_one :user }
end
