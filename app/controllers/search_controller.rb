class SearchController < ApplicationController
  def index
    @nations = AirbenderFacade.get_nations
    require 'pry';binding.pry
  end
end