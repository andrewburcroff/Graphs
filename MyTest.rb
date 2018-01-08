require './my_edge'
require './my_vertex'
require './my_graph'

class MyTest
  airport = MyGraph.new('MyAirport')
  puts "#{airport.label} should be the name of my Graph"

  #Inatilize the vertices for the graph of airport
  ord = airport.new_vertex("ORD")
  lax =airport.new_vertex("LAX")
  hnl =airport.new_vertex("HNL")
  sfo = airport.new_vertex("SFO")
  dfw =airport.new_vertex("DFW")
  pvd =airport.new_vertex("PVD")
  lga =airport.new_vertex("LGA")
  mia =airport.new_vertex("MIA")

  #Adding the data for the edges
  ordTOlax= airport.new_edge(1743,nil,ord, lax)
  sfoTOord = airport.new_edge(1843,nil,sfo,ord)
  laxTOsfo= airport.new_edge(337,nil,lax,sfo)
  hnlTOlax = airport.new_edge(2555,nil,hnl,lax)
  dfwTOlax = airport.new_edge(1233,nil,dfw,lax)
  dfwTOord = airport.new_edge(802,nil,dfw,ord)
  pvdTOord = airport.new_edge(849,nil,pvd,ord)
  pvdTOlga = airport.new_edge(142,nil,pvd,lga)
  lgaTOmia = airport.new_edge(1099,nil,lga,mia)
  miaTOdfw = airport.new_edge(1020,nil,mia,dfw)
  lgaTOdfw = airport.new_edge(1387,nil,lga,dfw)

  #add the edge to the Vertex
  puts "#{ord.label} should be ORD"
  puts "#{lax.label} should be LAX"
  puts "#{ordTOlax.label} should add edge to ORD"
  puts "#{laxTOsfo.label} should add edge to LAX"
  puts "#{sfoTOord.label} should add edge to SFO"
  puts "#{hnlTOlax.label} should add edge to HNL"
  puts "#{dfwTOord.label} should add edge to DFW"
  puts "#{dfwTOlax.label} should add edge to LAX"
  puts "#{pvdTOord.label} should add edge to DFW"
  puts "#{lgaTOmia.label} should add edge to LGA"
  puts "#{miaTOdfw.label} should add edge to MIA"
  puts "#{lgaTOdfw.label} should add edge to DFW"

  #The parts for the num of vertes and edges
  numFORvertex=airport.num_vertices
  puts "#{numFORvertex} is the number of the Vertices"
  numFORedge = airport.num_edges
  puts "#{numFORedge} is the number of the Edges"
  vertexlist = airport.list_vertices
  edgelist = airport.list_edges

  #This part is where I fidn the adjacent vertices of each vertex
  adjORD = airport.adjacent_vertices(ord)
  puts "The ORD : #{adjORD[0].label}"
  adjDFW = airport.adjacent_vertices(dfw)
  puts "THE DFW : #{adjDFW[0].label}"
  adjMIA = airport.adjacent_vertices(mia)
  puts "The MIA : #{adjMIA[0].label}"
  adjSFO = airport.adjacent_vertices(sfo)
  puts "The SFO : #{adjSFO[0].label}"
  adjLAX = airport.adjacent_vertices(lax)
  puts "THE LAX : #{adjLAX[0].label}"
  adjHNL = airport.adjacent_vertices(hnl)
  puts "The HNL : #{adjHNL[0].label}"
  adjLGA = airport.adjacent_vertices(lga)
  puts "The LGA : #{adjLGA[0].label}"
  adjPVD = airport.adjacent_vertices(pvd)
  puts "THe PVD : #{adjPVD[0].label}"

  #This for loop gets the deg for each vertex in my graph
  for j in 0..vertexlist.size-1
    v = vertexlist[j]
    dv = airport.deg_vertex(v)
    puts "The #{v.label} has degree #{dv}"
  end

  # this for loop gets the adjacent_vertices for vertices in Graph
  for a in 0..vertexlist.size-1
    v = vertexlist[a]
    adj = airport.adjacent_vertices(v)
    for b in 0..adj.size-1
      dv = adj[b]
      puts "This vertex #{v.label} contains #{dv.label}"
    end
  end

  #this is the incident_edges method for my graph
  for i in 0..vertexlist.size-1
    nam = vertexlist[b]
    hello = airport.incident_edges(nam)
    for h in 0..hello.size-1
      gen = hello[h]
      puts "vertex #{vertexlist[i].label} has a edge of #{gen.label}"
    end
  end

  #this for loop is for are_adjacent method in the graph
  for i in 0..vertexlist.size-1
    v = vertexlist[i]
    for j in 0..vertexlist.size-1
      tr = vertexlist[j]
      good = airport.are_adjacent(v, tr)
      #puts "#{good}"
      if(good == true)
        puts "#{v.label} are #{tr.label} adjacent"
      else
        puts "#{v.label} are #{tr.label} not adjacent"
    end
  end
end

#removing an edge
numFORedge = airport.num_edges
puts "Number of edges: #{numFORedge}"
airport.remove_Edge(hnlTOlax)
numFORedge = airport.num_edges
puts "Number of edges: #{numFORedge}"

#removing an vertex

numFORvertex=airport.num_vertices
puts "Number of Vertex: #{numFORvertex}"
airport.remove_Vertex(hnl)
numFORvertex=airport.num_vertices
puts "Number of Vertex: #{numFORvertex}"


end
