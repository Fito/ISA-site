class HomeController < ApplicationController
  before_filter :authenticate_admin!, :only => :admin_panel
  def index
    @posts = Post.all
  end
  
  def admin_panel
  end
end
