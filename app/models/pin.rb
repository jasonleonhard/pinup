class Pin < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  # has_many :comments

  # paperclip (:image not :avatar)        # other options are....  large: "600x600>", thumb: "100x100#"
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing2.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  # rails g paperclip pin image           # adding image to pin in schema
  # rake db:migrate
  # and _form added the folowing:
    # .form-group
    # = f.input :image, input_html: { class: 'form-control' }
  # pins_controller
    # def pin_params
    #   params.require(:pin).permit(:title, :description, :image)
    # end
  # show
             # = image_tag @pin.image.url(:medium)
  # index
    # = link_to (image_tag pin.image.url(:medium)), pin


  # sunspot search
  searchable do
    # simplest
      # text :title 
    # 3 searchable symbols with a scaled boost in speed
    text :title, :boost => 11
    text :description, :image # or just 1...
    # these dont work
      # text user: :name, :boost => 2 # text user: :email, :boost => 2
      # text :users do
      #   users.map(&:name) # users.map(&:email)
      # end
    # text :comments do
      # comments.map(&:content)
      # comments.map(&:title)
      # comments.map(&:description)
    # end
  end # rake sunspot:reindex

end