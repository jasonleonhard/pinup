require 'ffaker'

2.times do
  pin = Pin.create(
    :user_id => 1,
    :title => FFaker::Name.name,
    :description => FFaker::HipsterIpsum.sentence(11),
    :image => File.new(Dir["app/assets/images/random/*.jpg"].sample)
    # :image => File.new(Dir["public/assets/random/*.jpg"].sample)
  )
  puts pin.inspect
end