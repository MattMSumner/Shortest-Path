require_relative './path_finder'

class DataImporter
  def initialize(file_path)
    file = File.open(file_path)
    @data = file.read
    file.close
  end

  def output
    output = (1..length).map do |vertex|
      "    (#{starting_vertex} -> #{vertex}) = #{shortest_paths[vertex - 1]}"
    end

    output.delete_at(starting_vertex - 1)

    output.join("\n")
  end

  def shortest_paths
    path_finder = PathFinder.new(length, starting_vertex, processed_data[2..-1])
    path_finder.paths
  end

  def starting_vertex
    processed_data[1].to_i
  end

  def length
    processed_data[0].to_i
  end

  def processed_data
    @data.split("\n")
  end
end
