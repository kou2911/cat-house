class PostsController < ApplicationController
  before_action :authenticate_user!,only:[:show,:new,:edit,:destroy]
  before_action :move_index,only:[:edit,:destroy]


  def index
    @cats = Cat.all.order(created_at: :desc)
    @cat = Cat.new
  end

  def new 
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @cat = Cat.find(params[:id])

  end

  def edit
    @cat = Cat.find(params[:id])
  end


  def update
    @cat = Cat.find(params[:id])
    if @cat.update(cat_params)
      redirect_to post_path(@cat.id)
    else
      render :edit
    end
  end

  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
    redirect_to root_path
  end




  private

  def cat_params
    params.require(:cat).permit( :cat_name, :feature, :age_id, :place_id, :vaccine_id, :sickness_id,
                                 :castration_id, :memo, :contact_address, images:[]).merge(user_id: current_user.id)
  end

  def move_index
    @cat = Cat.find(params[:id])
    if @cat.user.id != current_user.id
      redirect_to action: :index
    end
  end




end
