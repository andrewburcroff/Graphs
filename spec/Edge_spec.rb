require_relative '../Graph'
require_relative '../Edge'
require_relative '../Vertex'

require 'yaml'

class Edge_spec

    describe "#initialize" do
      it "initialize label" do
        @my_edge.label.should eql "label"
      end
    end

    describe "#value" do
      it "Inatilize value" do
        @my_edge.value.should eql "value"
      end
    end
end
