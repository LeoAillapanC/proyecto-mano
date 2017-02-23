require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :name => "MyString",
      :pricing => 1,
      :description => "MyText",
      :stock => 1,
      :user => nil
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_pricing[name=?]", "product[pricing]"

      assert_select "textarea#product_description[name=?]", "product[description]"

      assert_select "input#product_stock[name=?]", "product[stock]"

      assert_select "input#product_user_id[name=?]", "product[user_id]"
    end
  end
end
