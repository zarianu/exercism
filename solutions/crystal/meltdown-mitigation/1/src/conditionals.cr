class Reactor
  def self.criticality_balanced?(temperature, neutrons_emitted)
    temperature < 800 && neutrons_emitted > 500
  end

  def self.reactor_efficiency(voltage, current, theoretical_max_power)
    eff = (voltage * current / theoretical_max_power) * 100

    if eff >= 80
      "green"
    elsif eff >= 60
      "orange"
    elsif eff >= 30
      "red"
    else
      "black"
    end
  end

  def self.fail_safe(temperature, neutrons_produced_per_second, threshold)
    i = temperature * neutrons_produced_per_second

    if i < 0.9 * threshold
      "LOW"
    elsif i <= 1.1 * threshold
      "NORMAL"
    else
      "DANGER"
    end
  end
end
