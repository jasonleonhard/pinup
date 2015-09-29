# DEVELOPMENT
  # rake db:reset db:migrate 
    # signup 1 user then
  # rake db:seed --trace

# PRODUTION
  # heroku pg:reset DATABASE 
    # levelupr
  # ?????????? heroku run rake db:create 
  #  heroku run rake db:migrate
    # signup 1 user then
  # heroku run rake db:seed # does this on the server bundle exec rake db:seed

  # possible trouble shooting cmd line 
              # ?????? heroku run rake db:reset 
              # ?????? heroku restart
              # heroku run rake db:create db:migrate
              # heroku run rake db:seed --trace

# https://github.com/stympy/faker
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

require 'ffaker'
# require 'faker'
# require 'populator'
# db/seeds.rb impliments the faker gem to seed the db

# WORKS WITH IMAGE!
20.times do
  pin = Pin.create( 
    :user_id => 1,  # WORKS! but no image.....
    :title => FFaker::Name.name, #=> "Legacy Creative Director",
    :description => FFaker::HipsterIpsum.sentence(11), #=> 
    # :description => FFaker::Lorem.sentence(11), #=> Corporis iusto vel reiciendis ut tenetur qui eos officiis rerum at consectetur.  
    # :image => File.new("#{Rails.root}/app/assets/images/missing2.png") # works for 1 image
  # rake db:seed --trace 
    # :image => File.new(Dir["app/assets/images/random/*.jpg"].sample) # BEST, random image from folder called random
  # # heroku run rake db:seed --trace
    :image => File.new(Dir["app/assets/images/random/*"].sample)
    # :image => File.new(Dir["app/assets/images/random/*.jpg"].sample)
    # :image => File.new(Dir["#{Rails.root}app/assets/images/random/*.jpg"].sample)
    # :image => File.new("#{Rails.root}/app/assets/images/random*.jpg") 
    # :image => File.new(Dir["app/assets/images/random/*.jpg"].sample)
    # :image => File.new(Dir["app/assets/images/random/*"].sample)


    # randomArray = pictures.sample(pictures.length)
    # :image => File.new(Dir["app/assets/images/random/*.jpg"].sample)

    # photo.image = File.open(file_path)
    # :image_file_name = File.open(Rails.root.join('doc', 'seeding', '300x220.jpg'))
    # has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing2.png"
    # :user => Faker::Lorem.number(11) #=> Corporis iusto vel reiciendis ut tenetur qui eos officiis rerum at consectetur.  

  )
  puts pin.inspect
end


# 111.times do
#   user = User.create( 
#     :first_name => Faker::Internet.user_name, #=> "Legacy Creative Director",
#     :last_name => Faker::Internet.user_name,
#     :age => Faker::Number.between(14,75)
#   )
#   puts user.inspect
# end

# schema.rb NOTES below
  # create_table "pins", force: :cascade do |t|
  #   t.string   "title"
  #   t.text     "description"
  #   t.datetime "created_at",         null: false
  #   t.datetime "updated_at",         null: false
  #   t.integer  "user_id"
  #   t.string   "image_file_name"
  #   t.string   "image_content_type"
  #   t.integer  "image_file_size"
  #   t.datetime "image_updated_at"
  # end
  # add_index "pins", ["user_id"], name: "index_pins_on_user_id"

#   create_table "users", force: :cascade do |t|
#     t.string   "email",                  default: "", null: false
#     t.string   "encrypted_password",     default: "", null: false
#     t.string   "reset_password_token"
#     t.datetime "reset_password_sent_at"
#     t.datetime "remember_created_at"
#     t.integer  "sign_in_count",          default: 0,  null: false
#     t.datetime "current_sign_in_at"
#     t.datetime "last_sign_in_at"
#     t.string   "current_sign_in_ip"
#     t.string   "last_sign_in_ip"
#     t.datetime "created_at",                          null: false
#     t.datetime "updated_at",                          null: false
#   end
#   add_index "users", ["email"], name: "index_users_on_email", unique: true
#   add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

#   create_table "votes", force: :cascade do |t|
#     t.integer  "votable_id"
#     t.string   "votable_type"
#     t.integer  "voter_id"
#     t.string   "voter_type"
#     t.boolean  "vote_flag"
#     t.string   "vote_scope"
#     t.integer  "vote_weight"
#     t.datetime "created_at"
#     t.datetime "updated_at"
#   end
#   add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
#   add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"

# end



# 111.times do
#   votes = Vote.create( 
#     :com => Faker::Name.title, #=> "Legacy Creative Director",
#     :body => Faker::Lorem.sentence(11) #=> Corporis iusto vel reiciendis ut tenetur qui eos officiis rerum at consectetur.  
#   )
#   puts votes.inspect
# end

# # 111.times do
#   user = User.create( 
#     :first_name => Faker::Internet.user_name, #=> "Legacy Creative Director",
#     :last_name => Faker::Internet.user_name,
#     :age => Faker::Number.between(14,75)
#   )
#   puts user.inspect
# end

# # 111.times do
#   post = Post.create( 
#     :title => Faker::Name.title, #=> "Legacy Creative Director",
#     :description => Faker::Lorem.sentence(11) #=> Corporis iusto vel reiciendis ut tenetur qui eos officiis rerum at consectetur.  
#   )
#   puts post.inspect
# end

# 111.times do
#   comment = Comment.create( 
#     :com => Faker::Name.title, #=> "Legacy Creative Director",
#     :body => Faker::Lorem.sentence(11) #=> Corporis iusto vel reiciendis ut tenetur qui eos officiis rerum at consectetur.  
#   )
#   puts comment.inspect
# end