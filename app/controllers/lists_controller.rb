class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def create
    ## Create a new list! here
    @list = List.new(strong_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  private

  def strong_params
    params.require(:list).permit(:name)
  end
end
