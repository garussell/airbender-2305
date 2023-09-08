class AirbenderFacade
  def self.airbender
    AirbenderService.new
  end

  def self.get_nations(affiliation)
    airbender.characters_with_nation_affiliation(affiliation)
  end
end