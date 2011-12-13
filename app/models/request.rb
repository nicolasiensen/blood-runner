class Request < ActiveRecord::Base
  has_and_belongs_to_many :blood_types
  attr_accessor :location
end
