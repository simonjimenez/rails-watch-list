class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def index
    @lists = List.all
  end

  def create
    @list = List.new(list_params)
    @list.save

    redirect_to list_path(@list)
  end
  private

def list_params
  params.require(:list).permit(:name)
end
end
