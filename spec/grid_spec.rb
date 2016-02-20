require_relative '../lib/grid'

describe Grid do

  context "Grid with input 53" do
    it "should return 5 rows and 3 columns" do
      grid  = Grid.new('53')
      expect(grid.rows).to eq 5
      expect(grid.columns).to eq 3
    end

    it "should return boundry points" do
      grid  = Grid.new('53')
      boundry_points = ["0 0", "1 0", "2 0", "3 0", "4 0", "5 0", "0 1", "5 1", "0 2", "5 2", "0 3", "1 3", "2 3", "3 3", "4 3", "5 3"]
      expect(grid.boundry_points).to eq boundry_points
    end
  end

  context "Grid with input 56 78" do
    it "should return 56 rows and 78 columns" do
      grid  = Grid.new('56 78')
      expect(grid.rows).to eq 56
      expect(grid.columns).to eq 78
    end
  end

end
