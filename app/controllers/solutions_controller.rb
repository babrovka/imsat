class SolutionsController < ApplicationController
  def index
    @solutions = Solution.published.order("sn ASC")
    @solution = Solution.published.first
  end

  def show
  	@solutions = Solution.published.order("sn ASC")
    @solution = Solution.find(params[:id])
  end
end


