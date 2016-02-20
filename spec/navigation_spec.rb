require_relative '../lib/grid'
require_relative '../lib/navigation'

describe Navigation do

  before { @navigation  = Navigation.new }

  context "11E with instructions RFRFRFRF (11E RFRFRFRF)" do
    it "should return 11E" do
      @navigation.set_grid('53')
      @navigation.set_position('11E')
      @navigation.set_instructions('RFRFRFRF')
      @navigation.navigate
      expect(@navigation.current_position).to eq "11E"
    end
  end

  context "11E with instructions LFLFLFLF (11E LFLFLFLF)" do
    it "should return 11E" do
      @navigation.set_grid('53')
      @navigation.set_position('11E')
      @navigation.set_instructions('LFLFLFLF')
      @navigation.navigate
      expect(@navigation.current_position).to eq "11E"
    end
  end

  context "32N with instructions FRRFLLFFRRFLL (32N FRRFLLFFRRFLL)" do
    it "should return 33NLOST" do
      @navigation.set_grid('53')
      @navigation.set_position('32N')
      @navigation.set_instructions('FRRFLLFFRRFLL')
      @navigation.navigate
      expect(@navigation.current_position).to eq "33NLOST"
    end
  end

  context "03W with instructions LLFFFLFLFL (03W LLFFFLFLFL)" do
    it "should return 24S" do
      @navigation.set_grid('53')
      @navigation.set_position('03W')
      @navigation.set_instructions('LLFFFLFLFL')
      @navigation.navigate
      expect(@navigation.current_position).to eq "24S"
    end
  end

  context "03W with instructions LLFFFLFLFLF (03W LLFFFLFLFLF)" do
    it "should return 23SLOST" do
      @navigation.set_grid('53')
      @navigation.set_position('03W')
      @navigation.set_instructions('LLFFFLFLFLF')
      @navigation.navigate
      expect(@navigation.current_position).to eq "23SLOST"
    end
  end

end
