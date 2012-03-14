class Diver < ActiveRecord::Base
  has_many :entry_sample



  #Validations
  validates_length_of :diver_name_id, :is => 4
  validates :diver_name_id, :uniqueness => true
  validates_format_of :diver_name_id, :with => /\d{4}/
  validates_format_of :diver_name, :with => /[A-Z]_[A-Z]/

end
