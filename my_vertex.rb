class MyVertex

  attr_accessor :label, :value, :vid, :adj_arr, :inc_arr

  def initialize(label, value, vid)
      @label = label
      @value = value
      @vid = vid
      @adj_arr = Array.new
      @inc_arr = Array.new
  end

  def connect(vec, ele)
    @adj_arr << vec
    @inc_arr << ele
  end

  def disconnect(edge)
    inc_arr.delete(edge)
  end

end
