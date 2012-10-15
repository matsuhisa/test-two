class PlaceSpec < ActiveRecord::Base
  attr_accessible :body, :name

  #has_one :reply
  belongs_to :place_spec_master
  #has_one :place_spec_master
end
