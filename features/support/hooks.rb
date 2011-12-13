Before do
  %w{O- O+ A- B- A+ B+ AB+ AB-}.each do |type|
    BloodType.make!(:name => type)
  end
end
