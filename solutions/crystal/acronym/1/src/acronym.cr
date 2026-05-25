module Acronym
  def self.cleanup(s : String) : String
    s.gsub('-', ' ').delete('_')
  end
  def self.abbreviate(phrase : String) : String
    cleanup(phrase).titleize.split.map(&.char_at(0)).join
  end
end
