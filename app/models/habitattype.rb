class Habitattype < ActiveRecord::Base
  has_many :entry_sample

  #Validations
  validates :habitat_type_id, :presence => true
  validates :habitat_name, :presence => true
  validates :habitat_descr, :presence => true
end
