class SearchController < ApplicationController
  def search
  @search = Sunspot.search Product, Solution, Aid do
    fulltext params[:search]
  end
  @search_result = @search.results
  end
end