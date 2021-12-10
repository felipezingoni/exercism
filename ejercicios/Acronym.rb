class Acronym
  def self.abbreviate(acronym)
    acronym.scan(/\b[a-zA-Z]/).join.upcase
  end

end
