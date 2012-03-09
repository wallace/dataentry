class Entrysample < ActiveRecord::Base
  belongs_to :sample_type
  belongs_to :diver
  belongs_to :habitat_type
end
