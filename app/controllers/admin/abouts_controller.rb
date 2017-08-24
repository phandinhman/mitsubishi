class Admin::AboutsController < AdminController
  before_action :load_abouts, only: :index
  
  def index
  end

  def new
    @about = About.new
  end

  def create
    @about = About.new about_params
    @about.save
    redirect_to admin_abouts_path
  end

  def edit
  end

  private
  def load_abouts
    @abouts = About.all
  end

  def about_params
    params.require(:about).permit :content
  end
end
