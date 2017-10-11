require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Henry") }

  describe "#initialize" do
    it "sets a type"
      expect(something.type).to eq('something')
    it "sets a quantity"
      expect(something.quantity).to eq(100)

    it "starts ingredients as an empty array"
      expect(something.ingredients).to be_empty

    it "raises an argument error when given a non-integer quantity"
      expect {Dessert.new("latte", "ERROR", chef)}.to raise_error(ArgumentError)
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
      something.add_ingredient("Henry")
        expect(something.ingredients).to include("Henry")
      end
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
    ingredients = %w(Test1, Test2, Test3, Test4)

    something.each do |element|
      something.add_ingredient(element)
    end

    expect(something.ingredients).to eq(ingredients)
    something.mix!
    expect(somemthing.ingredients).not_to eq(ingredients)
    expect(somemthing.ingredients.sort).to eq(ingredients)
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"
      something.eat(20)
      expect(something .quantity).to eq(80)
    end

    it "raises an error if the amount is greater than the quantity"
    expect {something.eat(120).to raise_error("not enough left!")}
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
      allow(chef).to receive(:titleize).and_return("Henry Test Name")
      expect(something.serve).to eq("Henry Test Name has made over 9000!")
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
