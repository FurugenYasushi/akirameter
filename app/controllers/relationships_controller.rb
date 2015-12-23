class RelationshipsController < ApplicationController
before_action :logged_in_user

  def create
    @user = User.find(params[:followed_id])
    current_user.follow(@user)
  end

  def destroy
    @user = current_user.following_relationships.find(params[:id]).followed
    current_user.unfollow(@user)
  end

#ここから下にストロングパラーメーター追記
#  private

#  def relationships_params
#    params.require(:relationships).permit(:followed_id,:follower_id)
#  end
end
