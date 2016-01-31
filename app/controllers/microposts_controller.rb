class MicropostsController < ApplicationController
#  before_action :logged_in_user, only: [:create]

  def create
        if logged_in?
       @micropost = current_user.microposts.build(micropost_params)
        else
          @micropost = Micropost.new(micropost_params)
        end
    
    
    if @micropost.save
      #render 'static_pages/done'
      flash[:success] = "お疲れ様でした！!　あなたの次のチャンスへの扉が今開きました！ May the force wiil be with you!!"
      redirect_to root_url
    else
      #@feed_items = current_user.feed_items.includes(:user).order(created_at: :desc)
      @micropost_all = Micropost.all.order(created_at: :desc)
      render 'static_pages/home'
    end
  end
  
  def destroy
    @micropost = current_user.microposts.find_by(id: params[:id])
    return redirect_to root_url if @micropost.nil?
    @micropost.destroy
    flash[:success] = "Micropost deleted"
    redirect_to request.referrer || root_url
  end
  
  def new
  @micropost = Micropost.new
  end
  
  private
  def micropost_params
    params.require(:micropost).permit(:content,:seibetsu,:age,:past_time)
  end
end