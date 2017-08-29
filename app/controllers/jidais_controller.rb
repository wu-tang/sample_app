class JidaisController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :destroy]

  def new
  end

  def create
    @jidai = current_rekishi.jidais.build(jidai_params)
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
      params.require(:jidai).permit(:name,:start_date,:end_date)
    end
end
