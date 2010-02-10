require 'rubygems'
require 'geo_ruby'

def load_file(file)
  geoms = []
  GeoRuby::Shp4r::ShpFile.open(file).each do |record|
    wkt = record.geometry.text_geometry_type()
    puts wkt
  end
  
  
end

def load_dbf_file(file)
  reader = GeoRuby::Shp4r::Dbf::Reader.open(file)
  reader.fields().each do |field|
    puts field.name
  end

end


load_file("chipolte.shp")
load_dbf_file("chipolte.dbf")