class Flotilla
  attr_reader :name,
              :personnel,
              :ships
  def initialize(attributes)
    @name = attributes[:designation]
    @personnel = []
    @ships = []
  end

  def add_ship(ship)
    @ships << ship
  end
end
