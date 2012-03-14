class EntrysamplesController < ApplicationController
  def new
    @entrysample = Entrysample.new
    @entrysamples = Entrysample.find(:all)
  end

  def create
    @entrysample = Entrysample.new(params[:entrysample])
    if @entrysample.save
      redirect_to new_entrysample_path
    else
      render :action => "new"
    end
  end      
end


