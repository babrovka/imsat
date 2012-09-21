class SolutionsController < ApplicationController
  def index
    @solutions = Solution.all
    @solution = Solution.last
  end

  def show
  	@solutions = Solution.all
    @solution = Solution.find(params[:id])
  end
end


