class SolutionsController < ApplicationController
  def index
    @solutions = Solution.order("sn ASC")
    @solution = Solution.first
  end

  def show
  	@solutions = Solution.order("sn ASC")
    @solution = Solution.find(params[:id])
  end
end


