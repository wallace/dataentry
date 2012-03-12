class Entrysample < ActiveRecord::Base
  belongs_to :sample_type
  belongs_to :diver
  belongs_to :habitat_type

  #Validations
  validates :sample_type_id, :presence => true
  validates :date, :presence => true
end
