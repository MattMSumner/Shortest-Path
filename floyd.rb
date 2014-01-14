class Floyd

  def initialize(graph = Array.new)
    @graph = graph
  end

  def process
    @graph.each_index do |k|
      @graph.each_index do |i|
        @graph.each_index do |j|
          if (@graph[i][j] == "-") && (@graph[i][k] != "-" && @graph[k][j] != "-")
            @graph[i][j] = @graph[i][k]+@graph[k][j]
          elsif (@graph[i][k] != "-" && @graph[k][j] != "-") && (@graph[i][j] > @graph[i][k]+@graph[k][j])
            @graph[i][j] = @graph[i][k]+@graph[k][j]
          end
        end
      end
    end
  end

  def matrice
    @graph.each_index.map do |i|
      @graph[i]
    end
  end
end
