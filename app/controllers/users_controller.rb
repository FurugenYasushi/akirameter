class UsersController < ApplicationController
  before_action :set_user, only: [:show,:edit,:update,:home]
  before_action :correct_user, only: [:edit, :update]
  
  def show 
  #@user = User.find(params[:id])
  #@microposts = @user.microposts.order(created_at: :desc)
  #              .paginate(page: params[:page], per_page: 10)
  end
  
  def followings
    #@title = "Followings"
    #@user  = User.find(params[:id])
    #@users = @user.following_users
    #render 'show_follow'
  end

  def followers
    #@title = "Followers"
    #@user  = User.find(params[:id])
    #@users = @user.follower_users
    #render 'show_follow'
  end 
  
  def new
    #@user = User.new
  end
  
  def create
    #@user = User.new(user_params)
    #if @user.save
      #flash[:success] = "Welcome to the Sample App!"
      #redirect_to @user 
    #else
      #render 'new'
    #end
  end

  def edit
  
  end
  
  def home
  end
  
  def update
    #if @user.update(user_params)
      # 保存に成功した場合はトップページへリダイレクト
      #redirect_to @user, notice: 'メッセージを編集しました'
      #else
      # 保存に失敗した場合は編集画面へ戻す
      #render 'edit'
    #end
  end
  
  
  

  private

  def user_params
    #params.require(:user).permit(:name, :email, :bio, :area, :password,
    #                             :password_confirmation)
  end
  
  def set_user
    @user = TwitterUser.find(params[:id])
  end
  
  def correct_user
    #@user = User.find(params[:id])
    #redirect_to(root_url) unless @user == current_user
  end
  
end
