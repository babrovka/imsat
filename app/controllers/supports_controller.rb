class SupportsController < InheritedResources::Base

 def index
    @supports = Support.all
    @support = Support.first
  end

  def show
  	@supports = Support.all
    @support = Support.find(params[:id])
  end
end


