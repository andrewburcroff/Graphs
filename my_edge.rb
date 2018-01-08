class MyEdge

  attr_accessor :label, :value, :eid, :from, :to

  def initialize(label, value)
      @label = label
      @value = value
      @from = from
      @to = to
  end
=begin
  def connect(vec, ele)
    @adj_arr << vec
    @inc_arr << ele
  end
=end
  def compare(vertex)
    (vertex == @from) ? @to : @from
  end


end
