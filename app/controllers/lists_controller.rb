class ListsController < ApplicationController
  respond_to :json

  def index
    respond_with lists
  end

  def show
    respond_with list
  end


  def new
    respond_with list
  end

  def create
    list.save
    respond_with list
  end


  def edit
    respond_with list
  end

  def update
    list.update_attributes list_params
    respond_with list
  end


  def destroy
    list.destroy
    respond_with list
  end



  private

  def list_params
    params.require(:list).permit(:name)
  end


  def lists
    @lists ||= if params.has_key? :ids
      List.where(id: params[:ids])
    else
      List.scoped
    end
  end

  def list
    @list ||= if params.has_key? :id
      List.find params[:id]
    else
      List.new list_params
    end
  end
end
