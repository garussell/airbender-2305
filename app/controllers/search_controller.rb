class SearchController < ApplicationController
  def index
    @nations = AirbenderFacade.get_nations
  end
end