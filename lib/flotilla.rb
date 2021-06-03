class Flotilla
  attr_reader :name,
              :personnel,
              :ships
  def initialize(attributes)
    @name = attributes[:designation]
    @personnel = []
    @ships = []
  end
end
