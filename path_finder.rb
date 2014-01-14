require_relative './floyd'

class PathFinder
  def initialize(length, starting_vertex_index, matrix)
    @length = length
    @starting_vertex_index = starting_vertex_index - 1
    @matrix = matrix
  end

  def paths
    floyd[@starting_vertex_index]
  end

  def floyd
    floyd = Floyd.new(graph)
    floyd.process
    floyd.matrice
  end

  def graph
    @matrix.map {|line| line.split(" ").map {|char| char == "-" ? char : char.to_i} }
  end
end
