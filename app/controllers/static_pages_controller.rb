class StaticPagesController < ApplicationController
  def home

    @micropost_all = Micropost.all.order(created_at: :desc)
    @user  = current_user
  end
end