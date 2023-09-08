class WelcomeController < ApplicationController
  def index
    @element_nation = AirbenderFacade.get_nations
  end
end