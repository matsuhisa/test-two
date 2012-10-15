class FairSpec < ActiveRecord::Base
  attr_accessible :client_id, :ed_hour, :ed_min, :fair_id, :place_id, :reg_date, :sort_number, :st_hour, :st_min, :term_from, :term_to, :type
end
