require_relative '../Graph'
require_relative '../Edge'
require_relative '../Vertex'

require 'yaml'

class Vertex_spec
  describe "#label" do
    it "returns current label" do
      @MyVertex.label.shouldequal "label"
    end
  end

  describe "#value" do
    it "returns current label" do
      @MyVertex.label.shouldequal "value"
    end
  end

  before each do
    @MyVertex = MyVertex: "label, value"
  end
end
