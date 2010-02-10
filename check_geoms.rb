require 'rubygems'
require 'geo_ruby'

def load_file(file)
  geoms = []
  GeoRuby::Shp4r::ShpFile.open(file).each do |record|
    wkt = record.geometry.text_geometry_type()
    puts wkt
  end
  
  
end


load_file("chipolte.shp")