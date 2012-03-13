class Entrysample < ActiveRecord::Base

  belongs_to :sample_type
  belongs_to :diver
  belongs_to :habitat_type  

  #Validations
  validates :sample_type_id, :presence => true
  validates :date, :presence => true

  before_save :create_msn

  protected

  def create_msn
    self.mastersampcd = date.to_s(:number) + sampbegh.to_s + sampbegm.to_s + diver_name_id
  end
end

