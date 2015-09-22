class Pin < ActiveRecord::Base
  belongs_to :user

  # paperclip (:image not :avatar)
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  # rails g paperclip pin image
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
end