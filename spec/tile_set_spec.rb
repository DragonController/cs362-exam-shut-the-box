require_relative '../lib/tile_set'
require_relative '../lib/tile'

describe 'A tile set' do

  describe '::generate' do

    it 'returns an array of 9 tiles by default' do
      tile_set = TileSet.generate
      expect(tile_set.size).to be(9)
    end

    it 'returns an array of tiles of a specified length' do
      tile_set = TileSet.generate(8)
      expect(tile_set.size).to be(8)
    end

    it 'returns an array of tiles whose values increase from 1, by 1' do
      tile_set = TileSet.generate
      expect(tile_set[0].value).to be(1)
      expect(tile_set[1].value).to be(2)
      expect(tile_set[2].value).to be(3)
      expect(tile_set[3].value).to be(4)
      expect(tile_set[4].value).to be(5)
      expect(tile_set[5].value).to be(6)
      expect(tile_set[6].value).to be(7)
      expect(tile_set[7].value).to be(8)
      expect(tile_set[8].value).to be(9)
    end

  end

end
