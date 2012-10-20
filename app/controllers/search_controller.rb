class SearchController < ApplicationController
  def search
  @results = ThinkingSphinx.search(params[:search]), 
  :page => params[:page], :per_page => 5
end
end
end