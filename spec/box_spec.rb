require_relative '../lib/box'
require_relative '../lib/tile'

describe 'A box' do

  describe 'attributes' do
    it 'has tiles' do
      box = Box.new
      expect(box.tiles).to_not be_empty
    end
  end

  describe 'creation' do
    context 'by default' do
      it 'will initialize an array of tiles' do
        box = Box.new
        expect(box.tiles).to_not be_empty
      end
    end
    context 'with a specific array of tiles' do
      it 'will retain the tiles passed its constructor' do
        tiles = (1..9).map { |n| Tile.new(n) }
        box = Box.new(tiles)
        expect(box.tiles).to match_array(tiles)
      end
    end
  end

  describe '#tiles_remaining?' do
    it 'returns true when at least one tile is up' do
      box = Box.new
      expect(box).to be_tiles_remaining
    end
    it 'returns false when none of the tiles are up' do
      box = Box.new
      box.flip(1..9)
      expect(box).to_not be_tiles_remaining
    end
  end

  describe '#no_tiles_remaining?' do
    it 'returns true when none of the tiles are up' do
      box = Box.new
      box.flip(1..9)
      expect(box).to be_no_tiles_remaining
    end
    it 'returns false when any tile is up' do
      box = Box.new
      expect(box).to_not be_no_tiles_remaining
    end
  end

  describe '#shut?' do
    it 'is true when there are no tiles remaining' do
      skip
    end
    it 'is false when there are tiles remaining' do
      skip
    end
  end

  describe '#total_value_of_remaining_tiles' do
    it 'is the sum of the values of all the tiles that are still up' do
      skip
    end
  end

  describe '#flip' do
    it 'flips each tile whose value matches any of the tile values it receives' do
      skip
    end
    it 'does not flip any tile whose value does not match any of the tile values it receives' do
      skip
    end
  end

  describe '#to_s string representation' do
    # Given a box with the tiles that have values 1, 2, 3, 4,
    # And tile 2 is down,
    # The string representation is [1][ ][3][4].
    it "is each tile value in brackets with blanks for tiles that are down" do
      skip
    end
  end
end
