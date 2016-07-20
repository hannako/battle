class Player
  $player_1_name = :player_1_name
  $player_2_name = :player_2_name

  attr_reader :name

  def initialize(name)
    @name = name
  end
end
