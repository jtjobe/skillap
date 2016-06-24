class SinglePagesController < ApplicationController

  def landing_page
    if current_user
      redirect_to home_path
    end
  end

  def home
  end

end
