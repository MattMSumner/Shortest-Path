require 'rspec'
require_relative '../data_importer.rb'

describe DataImporter do
  it "should take in some data" do
    DataImporter.new("spec/fixtures/files/shortest_path.dat")
  end

  it "should have a starting vertex" do
    data_importer = DataImporter.new("spec/fixtures/files/shortest_path.dat")

    data_importer.starting_vertex.should eq 1
  end

  it "should know it's length" do
    data_importer = DataImporter.new("spec/fixtures/files/shortest_path.dat")

    data_importer.length.should eq 5
  end

  it "should calculate shortest paths" do
    data_importer = DataImporter.new("spec/fixtures/files/shortest_path.dat")

    data_importer.output.should eq("    (1 -> 2) = 2
    (1 -> 3) = 5
    (1 -> 4) = 9
    (1 -> 5) = 9")
  end
end
