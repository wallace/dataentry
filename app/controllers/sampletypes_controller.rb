class SampletypesController < ApplicationController
  def new
    @sampletype = Sampletype.new
    @sampletypes = Sampletype.find(:all)
  end

  def create
    @sampletype = Sampletype.new(params[:sampletype])
    if @sampletype.save
      redirect_to new_sampletype_path
    end
  end

  def edit
    @sampletype = Sampletype.find(params[:id])
  end

  def update
    @sampletype = Sampletype.find(params[:id])
    if @sampletype.update_attributes(params[:sampletype])
      flash[:success] = "Sample type updated"
      redirect_to new_sampletype_path
    else
      flash[:failure] = "Sample type NOT updated"
    end
  end
end
