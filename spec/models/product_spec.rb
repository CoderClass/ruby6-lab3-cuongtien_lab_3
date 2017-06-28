require 'rails_helper'

RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe ".alphabetical" do
    it 'returns [] when there are no products' do
      expect(Product.alphabetical).to eq []
    end

    it 'returns [a] when there is only one product a' do
      a = Product.create!(name: "a")
      expect(Product.alphabetical).to eq [a]
    end

    it 'returns [a, b, c] after I create three products c, b, a' do
      a = Product.create!(name: "c")
      b = Product.create!(name: "b")
      c = Product.create!(name: "a")

      expect(Product.alphabetical).to eq [c, b, a]
    end
  end

  describe ".discount mount on sale" do
    it "return final price after I create product with discount price" do
      prd = Product.create(name: "a", price_vnd: 100000)

      expect(prd.price_after_saleoff).to eq(79000)
    end

  end
end
