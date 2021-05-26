class BlogController < ApplicationController
  before_action :authenticate_user!, :expel_non_admins, only: [:staff_area]

  def news
  end

  def game_updates
  end

  def champions
  end

  def items
  end

  def routes
  end

  def game_modes
  end

  def policy
  end

  def staff_area
  end

  private def expel_non_admins
    unless current_user.admin?
      redirect_to root_path
    end
  end
end
