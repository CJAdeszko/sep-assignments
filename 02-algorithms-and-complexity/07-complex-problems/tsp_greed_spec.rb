include RSpec

require_relative 'city'
require_relative 'tsp_greed'

RSpec.describe 'traveling_salesman(current_city, path =[])' do

  #Create city objects
  let(:chicago) { City.new("Chicago") }
  let(:phoenix) { City.new("Phoenix") }
  let(:san_fran) { City.new("San Francisco") }
  let(:new_york) { City.new("New York") }
  let(:miami) { City.new("Miami") }

  #Assign distances between neighbor cities
  before do
    chicago.neighbors[phoenix] = 1451.73
    chicago.neighbors[san_fran] = 1854.74
    chicago.neighbors[new_york] = 711.03
    chicago.neighbors[miami] = 1191.36

    phoenix.neighbors[chicago] = 1451.73
    phoenix.neighbors[new_york] = 2139.81
    phoenix.neighbors[san_fran] = 652.95
    phoenix.neighbors[miami] = 1978.85

    san_fran.neighbors[chicago] = 1854.74
    san_fran.neighbors[new_york] = 2565.70
    san_fran.neighbors[miami] = 2590.97
    san_fran.neighbors[phoenix] = 652.95

    new_york.neighbors[chicago] = 711.03
    new_york.neighbors[san_fran] = 2565.70
    new_york.neighbors[miami] = 1092.35
    new_york.neighbors[phoenix] = 2139.81

    miami.neighbors[chicago] = 1191.36
    miami.neighbors[new_york] = 1092.35
    miami.neighbors[san_fran] = 2590.97
    miami.neighbors[phoenix] = 1978.85
  end

  it "returns an array of city names in ascending order of distance starting with the current city" do
    expect(traveling_salesman(chicago)).to eq(["Chicago", "New York", "Miami", "Phoenix", "San Francisco"])
  end

  it "returns an array of city names in ascending order of distance starting with the current city" do
    expect(traveling_salesman(new_york)).to eq(["New York", "Chicago", "Miami", "Phoenix", "San Francisco"])
  end

  it "returns an array of city names in ascending order of distance starting with the current city" do
    expect(traveling_salesman(miami)).to eq(["Miami", "New York", "Chicago", "Phoenix", "San Francisco"])
  end

  it "returns an array of city names in ascending order of distance starting with the current city" do
    expect(traveling_salesman(phoenix)).to eq(["Phoenix", "San Francisco", "Chicago", "New York", "Miami"])
  end

  it "returns an array of city names in ascending order of distance starting with the current city" do
    expect(traveling_salesman(san_fran)).to eq(["San Francisco", "Phoenix", "Chicago", "New York", "Miami"])
  end
end
