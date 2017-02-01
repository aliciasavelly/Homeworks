require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs
(the `it` statements without blocks)! Be sure to look
over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Luke") }
  subject(:brownie) { Dessert.new('brownie', 12, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq('brownie')
    end

    it "sets a quantity" do
      expect(brownie.quantity).to eq(12)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { brownie.quantity('forty-nine') }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      brownie.add_ingredient('flour')
      expect(brownie.ingredients).to eq(['flour'])
      brownie.add_ingredient('salt')
      expect(brownie.ingredients).to include('salt')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      brownie.add_ingredient('cocoa')
      brownie.add_ingredient('eggs')
      brownie.add_ingredient('water')
      brownie.add_ingredient('sugar')
      brownie.mix!

      expect(brownie.ingredients).not_to eq(['flour', 'salt', 'cocoa', 'eggs', 'water', 'sugar'])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      brownie.eat(2)
      expect(brownie.quantity).to eq(10)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { brownie.eat(14) }.to raise_error('not enough left!')
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return('Chef Luke the Great Baker')
      expect(brownie.serve).to eq('Chef Luke the Great Baker has made 12 brownies!')
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(brownie)
      brownie.make_more
    end
  end
end
