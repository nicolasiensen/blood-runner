# coding: utf-8
Before do
  %w{O- O+ A- B- A+ B+ AB+ AB-}.each do |type|
    BloodType.make!(:name => type)
  end

  geoloc0 = double('Geokit::GeoLoc')
  geoloc0.stub(:lat) {nil}
  geoloc0.stub(:lng) {nil}

  geoloc1 = double('Geokit::GeoLoc')
  geoloc1.stub(:lat) {-30.0101958}
  geoloc1.stub(:lng) {-51.1593081}

  Geokit::Geocoders::GoogleGeocoder3.stub(:geocode).with("").and_return(geoloc0)
  Geokit::Geocoders::GoogleGeocoder3.stub(:geocode).with("xxx").and_return(geoloc0)
  Geokit::Geocoders::GoogleGeocoder3.stub(:geocode).with("Hospital do Coração, Porto Alegre").and_return(geoloc1)
end
