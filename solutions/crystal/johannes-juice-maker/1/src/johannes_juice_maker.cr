class JuiceMaker
  def initialize(fluid : Int32)
    @running = false
    @fluid = fluid
  end
  def running?
    @running
  end
  def self.debug_light_on?
    true
  end
  def start
    @running = true
  end
  def stop(minutes)
    @running = false
    @fluid -= 5 * minutes
  end
  def add_fluid(fluid)
    @fluid += fluid
  end
end
