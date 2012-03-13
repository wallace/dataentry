class Entrysample < ActiveRecord::Base

  belongs_to :sample_type
  belongs_to :diver
  belongs_to :habitat_type  

  #Validations
  validates :sample_type_id, :presence => true
  validates :date, :presence => true
  validates :field_id, :presence => true, :uniqueness => true
  validates_format_of :field_id, :with => /\d\d\d\d[A-Z]/

  before_save :create_msn

  protected

  def create_msn
    self.mastersampcd = date.to_s(:number) + sample_start_time.to_formatted_s(:time).gsub(":", "") + diver_name_id
  end
end

