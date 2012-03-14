class HabitattypesController < ApplicationController
  def new
    @habitattype = Habitattype.new
    @habitattypes = Habitattype.all
  end

  def create
    @habitattype = Habitattype.new(params[:habitattype])
    if @habitattype.save
      redirect_to new_habitattype_path
    else
      render :action => "new"
    end
  end

  def edit
    @habitattype = Habitattype.find(params[:id])
  end

  def update
    @habitattype = Habitattype.find(params[:id])
    if @habitattype.update_attributes(params[:habitattype])
      flash[:success] = "Habitat type updated"
      redirect_to new_habitattype_path
    else
      flash[:failure] = "Habitat type NOT updated"
      render :action => "new"
    end
  end
end
