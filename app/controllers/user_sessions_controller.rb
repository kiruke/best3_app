class UserSessionsController < ApplicationController
  def new; end

  def create
    @user = login(params[:email], params[:password])

    if @user
      redirect_back_or_to root_url, notice: 'ログインしました'
    else
      flash.now[:alert] = 'ログインに失敗しました'
      render action: 'new'
    end
  end

end
