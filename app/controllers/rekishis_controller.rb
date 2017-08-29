class RekishisController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :destroy]
  before_action :correct_user,   only: :destroy

  def new
  	@rekishi = Rekishi.new
  end

  def create
    @rekishi = current_user.rekishis.build(rekishi_params)
    if @rekishi.save
      flash[:success] = "レキシが作成されました！"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
    @rekishi.destroy
    flash[:success] = "rekishi deleted"
    redirect_to request.referrer || root_url
  end

  private

    def rekishi_params
      params.require(:rekishi).permit(:name)
    end

    def correct_user
      @rekishi = current_user.rekishis.find_by(id: params[:id])
      redirect_to root_url if @rekishi.nil?
    end
end