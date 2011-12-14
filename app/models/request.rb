class Request < ActiveRecord::Base
  acts_as_gmappable :validation => false

  belongs_to :user

  has_and_belongs_to_many :blood_types
  validates_presence_of :blood_types
  validates_presence_of :receptor
  validates_presence_of :location
  
  def gmaps4rails_address
    self.location
  end

  private
  def update_geocode
    geocode = Geokit::Geocoders::GoogleGeocoder3.geocode(location)
    self.latitude = geocode.lat
    self.longitude = geocode.lng
  end
end
