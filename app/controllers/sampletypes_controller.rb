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
end
