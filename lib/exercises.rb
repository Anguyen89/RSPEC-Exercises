class Array

  def my_uniq
    output = []
    self.each{ |el| output << el unless output.include?(el)}
    output
  end

  def two_sum
    output = []
    (0...self.length).each do |x|
      (x + 1...self.length).each do |y|
        output << [x,y] if self[x] + self[y] == 0
      end
    end
    output
  end

end
def my_transpose(ary)
  output = Array.new(ary.length) {[]}
  ary.each do |small_ary|
    small_ary.each_with_index do |el, i|
      output[i] << el
    end
  end
  output
end

# def stock_picker(ary)
#   output = []
#   lowest = ary[0]
#   lowest_i = nil
#   highest = ary[0]
#   highest_i = nil
#   ary.each_with_index do |day_price, i|
#     if day_price < lowest
#       lowest = day_price
#       lowest_i = i
#     end
#   end
# end
