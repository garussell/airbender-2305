class SearchController < ApplicationController
  def index
    @nations = AirbenderFacade.get_nations(params[:nation])
  end
end