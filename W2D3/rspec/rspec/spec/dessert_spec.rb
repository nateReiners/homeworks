require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:dessert) { Dessert.new("cake", 8, "bob dillon")}
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("cake")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(8)
    end


    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("brownie", "lots") }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("flour")
      expect(dessert.ingredients).to include("flour")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = %w(eggs milk flour sugar cocoa_powder baking_soda)
      ingredients.each do |ingredient|
        dessert.add_ingredient(ingredient)
      end
      dessert.mix!
      expect(dessert.ingredients).to_not eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(5)
      expect(dessert.quantity).to eq(3)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { dessert.eat(10) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(dessert.serve).to include("Bob Dillon")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      chef.bake(dessert)
    end
  end
end
