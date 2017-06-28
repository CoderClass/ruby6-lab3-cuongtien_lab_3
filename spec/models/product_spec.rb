require 'rails_helper'

RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe ".alphabetical" do
    it 'returns [] when there are no products' do
      expect(Product.alphabetical).to eq []
    end

    it 'returns [a] when there is only one product a' do
      a = Product.create!(name: "")
      expect(Product.alphabetical).to eq [a]
    end

    it 'returns [a, b, c] after I create three products c, b, a' do

    end
  end
end
