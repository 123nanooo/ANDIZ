class FlowersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @flowers = Flower.all
  end

  def new
    @flower = Flower.new
  end

  def create
    flower = Flower.new(flower_params)
    flower.user_id = current_user.id
    
    if flower.save
      redirect_to action: "index"
    else
      redirect_to action: "new"
    end
  end

  def show
    @flower = Flower.find(params[:id])
    @comments = @flower.comments
        @comment = Comment.new
  end

  def update
    flower = Flower.find(params[:id])
    if flower.update(flower_params)
      redirect_to action: "show", id: flower.id
    else
      redirect_to action: "new"
    end
  end
  def destroy
    flower= Flower.find(params[:id])
    flower.destroy
    redirect_to action: :index
  end

  def sahime
  end

  def snzyugai
  end

  def sakurakoti
  end

  def naginoki
  end

  def top
  end


  private
  def flower_params
    params.require(:flower).permit(:item1, :item2, :item3, :item4, :item5, :image)
  end
end