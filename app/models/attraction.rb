class Attraction < ActiveRecord::Base


	RGeo::ActiveRecord::SpatialFactoryStore.instance.tap do |config|
	# By default, use the GEOS implementation for spatial columns.
	config.default = RGeo::Geos.factory_generator

	# But use a geographic implementation for point columns.
	config.register(RGeo::Geographic.spherical_factory(srid: 4326), geo_type: "point")
	end

#	factory = RGeo::Geographic.spherical_factory(:srid => 4326)
#    set_rgeo_factory_for_column(:latlon, factory.projection_factory)
  #rgeo_factory_generator = RGeo::Geos.factory_generator
  #set_rgeo_factory_for_column(:location, RGeo::Geographic.spherical_factory(srid: 4326))
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
