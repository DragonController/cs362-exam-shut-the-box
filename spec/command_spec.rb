require_relative '../lib/command'

describe 'A command' do

  describe 'attributes' do
    it 'has text' do
      command = Command.new("test")
      expect(command.text).to_not be_empty
    end
  end

  describe '#give_up?' do
    context "when the command text is Command::GIVE_UP" do
      it 'returns true' do
        give_up_command = Command.new('g')
        skip
      end
    end
    context "when the command is not Command::GIVE_UP" do
      it 'returns false' do
        skip
      end
    end
  end

  describe '#digit_set?' do
    # Players can type in numbers separated by spaces, such as '3', '1 4' or
    # '2 3 7'. A command initialized with such a string is considered to
    # be a 'digit set.'
    # These numbers represent the tiles a player intends to flip.
    context "when the command is a digit set" do
      it 'returns true' do
        command_with_digit_set = Command.new('1 2 3')
        skip
      end
    end
    context "when the command is not a digit set" do
      it 'returns false' do
        skip
      end
    end
  end

  describe '#to_tile_values' do
    # Tile values are an integer array representation of a digit set.
    # A command with a digit set of '3 4 5' would result in tile values [3, 4, 5].
    # A command with a digit set of '6' would result in the tile values [6].
    it 'is an array of integers representing the text digit set' do
      command_with_digit_set = Command.new('1 2 3')
      skip
    end
  end

  describe '#sum' do
    # The sum of the tile values the player intends to flip.
    # This is useful for comparing the sum of the specified tile values to
    # the total of the face value of dice rolled.
    it 'is a sum of the values in the digit set' do
      command_with_digit_set = Command.new('1 2 3')
      skip
    end
  end

  describe '#possible_for?' do
    # When a player specifies the values of the tiles to flip as a digit set,
    # the command is either a possible move or not a possible move.
    # The numbers in the command's digit set must:
    # - all exist in an array of provided tile values, representing tiles that are still up
    # - have a sum equal to the total face value of dice
    context "valid tile values and valid sum" do
      it "returns true" do
        # Tiles 1 - 9 are up, dice roll sum is 6, player enters '1 2 3'
        command = Command.new('1 2 3')
        tile_values = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        dice_total = 6
        skip
      end
    end
    context "valid tile values and invalid sum" do
      # Tiles 1 - 9 are up, dice roll sum is 10, player enters '1 2 3'
      it "returns false" do
        command = Command.new('1 2 3')
        tile_values = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        dice_total = 10
        skip
      end
    end
    context "invalid tile values but valid sum" do
      # Tiles 4 - 9 are up, dice roll sum is 6, player enters '1 2 3'
      it "returns false" do
        command = Command.new('1 2 3')
        tile_values = [4, 5, 6, 7, 8, 9]
        dice_total = 6
        skip
      end
    end
    context "invalid tile values and invalid sum" do
      # Tiles 4 - 9 are up, dice roll sum is 10, player enters '1 2 3'
      it "returns false" do
        command = Command.new('1 2 3')
        tile_values = [4, 5, 6, 7, 8, 9]
        dice_total = 10
        skip
      end
    end
  end

  describe '#valid?' do
    context "when it is the 'give up' command" do
      it 'returns true' do
        skip
      end
    end

    context "when the command is a valid player move" do
      it 'returns true' do
        skip
      end
    end

    context "when the command is not 'give up' nor a valid player move" do
      it 'returns false' do
        invalid_command = Command.new("fake you, yong!!!")
        skip
      end
    end
  end

  describe '#to_s string representation' do
    it 'is its text' do
      skip
    end
  end

end
