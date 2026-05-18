module KitchenCalculator
  VOLUMES = { :milliliter => 1, :cup => 240, :fluid_ounce => 30, :teaspoon => 5, :tablespoon => 15}

  def self.get_volume(volume_pair)
    volume_pair[1]
  end

  def self.to_milliliter(volume_pair)
    { :milliliter, volume_pair[1] * VOLUMES[volume_pair[0]] }
  end

  def self.from_milliliter(volume_pair, unit)
    { unit, volume_pair[1] / VOLUMES[unit] }
  end

  def self.convert(volume_pair, unit)
    from_milliliter(to_milliliter(volume_pair), unit)
  end
end
