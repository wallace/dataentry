class DiversController < ApplicationController
  def new
    @diver = Diver.new
    @divers = Diver.all
  end
  def create
    @diver = Diver.new(params[:diver])
    if @diver.save
      redirect_to new_diver_path
    else
      render :action => "new"
    end
  end

  def edit
    @diver = Diver.find(params[:id])
  end

  def update
    @diver = Diver.find(params[:id])
    if @diver.update_attributes(params[:diver])
      flash[:success] = "Diver updated"
      redirect_to new_diver_path
    else
      flash[:failure] = "Diver NOT updated"
      render :action => "new"
    end
  end
end
