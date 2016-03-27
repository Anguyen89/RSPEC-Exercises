require 'rspec'
require 'exercises' #note: currently unnamed

describe Array do
  # clarify array?
  subject(:test_ary_one) {[1,2,3,4,5,2,3,2,2,1]}
  subject(:test_ary_two) {test_ary_one.shuffle}

  subject(:test_ary_three) {[-1, 0, 2, -2, 1]}

  describe "#uniq" do
    it "removes all duplicates inside of an array" do
      expect(test_ary_one.my_uniq).to eq ([1,2,3,4,5])
    end

    it "removes all duplicates of shuffled array" do
      expect(test_ary_two.my_uniq).to eq (test_ary_two.uniq)
    end

  end

  describe "#two_sum" do
    it "finds indexes of elements summing to 0" do
      expect(test_ary_three.two_sum).to eq ([[0,4],[2,3]])
    end

    it "returns empty array when no elements sum to 0" do
      expect(test_ary_one.two_sum).to eq ([])
    end
  end
end

  describe "#my_transpose" do
    it "transposes a multi-dimensional array" do
      expect(my_transpose([[0, 1, 2], [3, 4, 5],[6, 7, 8]])).to eq ([[0,3,6],[1,4,7],[2,5,8]])
    end
  end

  describe "#stock_picker" do
    it "gives the most profitable pair when profit is positive" do
      expect(stock_picker([2,3,1,5,7,12])).to eq ([2,5])
    end


  end
