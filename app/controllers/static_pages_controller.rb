class StaticPagesController < ApplicationController
  def home
  end

  def news
  end

  def product
  end

  def about
  end

  def test
    @request = params[:decision].to_i

    if @request == 1
      flash[:success] = "Email Sent"
    end


  end

end
