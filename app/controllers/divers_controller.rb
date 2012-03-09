class DiversController < ApplicationController
  def new
    @diver = Diver.new
    @divers = Diver.all
  end
  def create
    @diver = Diver.new(params[:diver])
    if @diver.save
      redirect_to new_diver_path
    end
  end
end
