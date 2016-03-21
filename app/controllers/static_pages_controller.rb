class StaticPagesController < ApplicationController
  def home
    @micropost = Micropost.new
    @micropost_all = Micropost.all.order(created_at: :desc)
    @user  = current_user
  end
end