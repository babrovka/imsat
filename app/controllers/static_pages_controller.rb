class StaticPagesController < ApplicationController
  def home
    @product = Product.where("id = '6'")
  end
  
  def about
  end
  
  def reshenia
  end

  def contact
  end

  def suport
  end

end
