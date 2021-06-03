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

  def add_personnel(person)
    @personnel << person
  end

  def recommend_personnel(ship)
    answer = []
    ship.requirements.map do |requirement|
      @personnel.find_all do |person|
        # require 'pry'; binding.pry
        if person.specialties.include?(requirement.keys.shift) && person.experience >= requirement.values.shift
          answer << person
        end
      end
    end
    answer.uniq
  end

  def personnel_by_ship
    new_hash = Hash.new { |hash, key| hash[key] = Array.new }
    @ships.each do |ship|
      new_hash[ship] = recommend_personnel(ship)
    end
    new_hash
  end

end
