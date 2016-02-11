class RelationshipsController < ApplicationController
before_action :logged_in_user

#ここから下にストロングパラーメーター追記
#  private

#  def relationships_params
#    params.require(:relationships).permit(:followed_id,:follower_id)
#  end
end
