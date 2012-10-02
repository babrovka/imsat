class SearchController < ApplicationController
  def search
  @search = ThinkingSphinx.search(params[:search])
end
end