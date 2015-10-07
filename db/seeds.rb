require 'ffaker'

# # create 1 user
# user = User.create(
#     :email => 'fakeEmail@gmail.com',
#     :encrypted_password => FFaker::Name.name, #=> "Legacy Creative Director",
#     :description => FFaker::HipsterIpsum.sentence(11), #=> # :description => FFaker::Lorem.sentence(11), #=> Corporis iusto vel reiciendis ut tenetur qui eos officiis rerum at consectetur.  
#     :image => File.new(Dir["app/assets/images/random/*.jpg"].sample)
#   )
# puts user.inspect

# pins/new  pins/create
# create 1 pin
# 20.times do
2.times do
  pin = Pin.create( 
    :user_id => 1,
    :title => FFaker::Name.name, #=> "Legacy Creative Director",
    :description => FFaker::HipsterIpsum.sentence(11), #=> # :description => FFaker::Lorem.sentence(11), #=> Corporis iusto vel reiciendis ut tenetur qui eos officiis rerum at consectetur.  
    # :image => File.new(Dir["app/assets/images/random/*.jpg"].sample)

    # @temp = Dir["app/assets/images/random/*.jpg"].sample
      @temp = Dir["public/assets/images/random/*.jpg"].sample

    :image => File.create(@temp)
    # Dir["app/assets/images/random/*.jpg"].sample gives one sample in console....
  )
  puts pin.inspect
end


app/assets
vs
public/assets 


# 20.times do
#   pin = Pin.create( 
#     :user_id => 1,
#     :title => FFaker::Name.name, #=> "Legacy Creative Director",
#     :description => FFaker::HipsterIpsum.sentence(11), #=> # :description => FFaker::Lorem.sentence(11), #=> Corporis iusto vel reiciendis ut tenetur qui eos officiis rerum at consectetur.  
#     :image => File.new(Dir["app/assets/images/random/*.jpg"].sample)
#     # :image => File.new(Dir["app/assets/images/random/*.jpg"].sample) # BEST, random image from folder called random
#   # :image => File.new("#{Rails.root}/app/assets/images/missing2.png") # works for 1 image
#   # :image => File.new(Dir["#{Rails.root}app/assets/images/random/*.jpg"].sample)
#   )
#   puts pin.inspect
# end




# DEVELOPMENT
  # rake db:reset db:migrate 
    # signup 1 user then
  # rake db:seed --trace
  

# PRODUTION
  # heroku pg:reset DATABASE --confirm levelupr
  # heroku run rake db:migrate
  # signup 1 user then
  # ? heroku run rake db:seed # does this on the server bundle exec rake db:seed

  # possible trouble shooting cmd line 
    # heroku run rake db:migrate
    # heroku run rake db:seed --trace
          # heroku run rake db:reset 
          # heroku restart
          # heroku run rake db:create 

