class HabitattypesController < ApplicationController
  def new
    @habitattype = Habitattype.new
    @habitattypes = Habitattype.all
  end

  def create
    @habitattype = Habitattype.new(params[:habitattype])
    if @habitattype.save
      redirect_to new_habitattype_path
    end
  end
end
