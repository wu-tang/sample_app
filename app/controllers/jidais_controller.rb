class JidaisController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :destroy]
  before_action :correct_user,   only: :destroy

  def new
    @jidai = Jidai.new
  end

  def create
    @jidai = Jidai.new(jidai_params)
    if @jidai.save
      flash[:success] = "ジダイが作成されました！"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

    def jidai_params
      params.require(:jidai).permit(:name,:start_date,:end_date,:rekishi_id)
    end
end
