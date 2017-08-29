class SessionsController < ApplicationController

  def new
  end

  def create
    #binding.pry
    Rails.logger.debug request.env['omniauth.auth'].inspect

    @user = User.find_or_create_from_auth_hash(request.env['omniauth.auth'])
    if @user
      puts "#--------------------#{@user.id}"
        log_in @user
        #params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
        redirect_back_or @user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end