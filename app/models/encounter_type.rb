class EncounterType < ActiveRecord::Base
  establish_connection :external
  
  set_table_name :encounter_type
  set_primary_key :encounter_type_id
  include Openmrs
  has_many :encounters, :conditions => {:voided => 0}
end
