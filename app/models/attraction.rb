class Attraction < ActiveRecord::Base
  set_rgeo_factory_for_column(:latlon,
    RGeo::Geographic.spherical_factory(:srid => 4326))
  
  belongs_to :page
  
  def nearest_attractions(number)
    Attraction.find_by_sql("Select *, 
        ST_Distance(
          Attractions.latlong, 
          ST_GeomFromText('#{ self.latlong } ')
        ) as distance
        from Attractions
        where ST_Distance(
          Attractions.latlong, 
          ST_GeomFromText('#{ self.latlong }')) > 0 
        order by ST_Distance(  
          Attractions.latlong, 
          ST_GeomFromText('#{ self.latlong }')
        )  
        limit #{number};")
  end
  
end
