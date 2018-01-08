class MyGraph

  attr_accessor :label, :num_vertices, :num_edges, :vertex_arr, :edge_arr

  def initialize (label = false)
    if !label
      @label=self.__id__
    else
    @label = label
    @num_vertices = 0
    @num_edges = 0
    @vertex_arr = Array.new
    @edge_arr = Array.new
  end

  def new_vertex(label = false, value= false)
    temp = MyVertex.new(label, value, @num_vertices) #Creating a new object of Vertex
    @vertex_arr << temp                             #Putting the temp at the end of temp
    @num_vertices += 1                              #Increasing num_vertices plus 1
    temp                                             #return the temp for vertex
  end

  def new_edge(label =false, value =false, a, b)
    temp2 = MyEdge.new(label, value) #Creating a new object of Edge
    temp2.to = a
    temp2.from = b
    @edge_arr << temp2                              #Pushing the temp2 on the edge
    #to.increaseCount
    a.connect(b, temp2)                         #Connecting the points to and temp2
    #from.increaseCount
    b.connect(a,temp2)                          #Connecting the points from and temp2
    temp2                                           #Return temp2
  end

  def newVertex
    temp = MyVertex.new(label, value, @num_vertices)
  end

  def remove_Edge(edge)
    if edge.to != nil
      puts "Edge to is eqaul to #{edge.to}"
      edge.to.disconnect(edge)
      puts "Edge from is equal to #{edge.from}"
      edge.from.disconnect(edge)
      edge_arr.delete(edge)
      @num_edges -= 1
      puts "THIS EDGE IS GONE FOREVER!"
    else
      puts "This edge does not work"
    end
    #delete this value
    #go to label
    #delte this label
    #Delete this edge

  end

  def remove_Vertex(v)
    for i in 0..v.inc_arr.size-1
      puts "#{i}"
      ness = v.inc_arr[i]
      remove_Edge(ness)
    end
    @vertex_arr.delete(v)
    @num_vertices -= 1
    #for loop to size of edges -1
    #for @vertex_arr.size-1 do
    #remove edge in edges [i]
    #remove_Vertex

  end

  def num_vertices
    @vertex_arr.size                #Getting the size of the vertex array
  end

  def num_edges
    @edge_arr.size                #Getting the size of the edge array
  end

  def list_vertices
      @vertex_arr
  end

  def list_edges
    @edge_arr
  end

  def vertex(vertex)
    vertex
  end

  def deg_vertex(vertex)
    vertex.adj_arr.size
  end

  def incident_edges(vertex)
    vertex.inc_arr
  end

  def adjacent_vertices(vertex)
    vertex.adj_arr
  end

#thinking this is working
  def end_vertices(edge)
    from = edge.from
    to = edge.to
    return from, to
  end

  def are_adjacent(w,v)
    edges = w.inc_arr
    for i in 0..edges.size-1
      if (v == edges[i].compare(w))
        return true
      end
    end
  false
end
end
end
