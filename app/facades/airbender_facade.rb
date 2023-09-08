class AirbenderFacade
  def self.airbender
    AirbenderService.new
  end

  def self.get_nations
    require 'pry';binding.pry
  end
end