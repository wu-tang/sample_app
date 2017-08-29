class StaticPagesController < ApplicationController
  def home
    @rekishi = current_user.rekishis.build if logged_in?
  end

  def help
  end

  def about
  end

  def contact
  end
end
