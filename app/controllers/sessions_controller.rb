class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:session][:username] == "kindai" && params[:session][:password] == "sanriko"
      flash[:success] = "ログイン成功"
      redirect_to root_path
    else
      flash.now[:danger] = "ログイン失敗"
      render 'new'
    end
  end
  
  def destroy
    session.delete(:login_uid)
    redirect_to root_path, notice: "ログアウトしました"
  end
end
