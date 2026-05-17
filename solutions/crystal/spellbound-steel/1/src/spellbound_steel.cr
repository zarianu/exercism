module SpellboundSteel
  def self.find_card?(cards, card)
    cards.index(card)
  end

  def self.capitalize_names(characters)
    characters.map { |c| c.split.map { |c| c.capitalize}.join(' ') }
  end

  def self.calculate_power_level(cards)
    acc = 0
    cards.map do |c|
      case
      when c == "Warrior" then acc += 10
      when c == "Mage" then acc += 20
      when c == "Rogue" then acc += 30
      when c == "Fireball" then acc += 15
      when c == "Ice Storm" then acc += 25
      when c == "Lightning Bolt" then acc += 35
      end
    end
    acc
  end

  def self.decode_characters(character)
    acc = ""
    character.each_char_with_index do |c, i|
      if i.even?
        acc += c
      end
    end
    acc
  end
end
