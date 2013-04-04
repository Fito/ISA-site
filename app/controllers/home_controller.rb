class HomeController < ApplicationController
  before_filter :authenticate_admin!, :only => :admin_panel
  def index
    @posts = Post.all
  end
  
  def admin_panel
  end
  
  def new_admin
    @admin = Admin.new
  end
  
  def create_admin
    puts params
    @admin = Admin.new(params[:admin])
    respond_to do |format|
      if @admin.save
        format.html { redirect_to '/admins/panel', notice: 'Account was successfully created.' }
        format.json { render json: @admin, status: :created, location: @admin }
      else
        format.html { redirect_to panel_new_admin_path, notice: @admin.errors.full_messages.first }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def news
    @posts = Post.all
  end
end
