require_relative '../lib/lambda'
require 'byebug'

RSpec.describe "MyLambda" do
  before(:each) do
    @mylambda = MyLambda.new
  end

  it "can initializze" do
    expect(@mylambda.class).to eq(MyLambda)
  end

  it "can output string of text" do
    expect(@mylambda.can_output_string_of_text).to eq('This is a string of text!')
  end

  it "can use lambda and send it arguments and increment by 1" do
    expect(@mylambda.incrementor(5)).to eq(6)
    expect(@mylambda.incrementor(100)).to eq(101)
    expect(@mylambda.incrementor(199)).to eq(200)
    expect(@mylambda.incrementor(150)).to eq(151)
  end

  it "can return two arguments and return them joined" do
    expect(@mylambda.joined("army", "navy")).to eq("armynavy")
  end
end
