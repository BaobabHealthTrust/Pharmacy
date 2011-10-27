class LocationTagMap < ActiveRecord::Base
  establish_connection :external
  
  set_table_name "location_tag_map"
  set_primary_keys :location_tag_id, :location_id
end
