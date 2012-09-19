class Showcase
  include Mongoid::Document
  include Mongoid::Paperclip
  field :name, type: String
  field :description, type: String
  field :color, type: String
  field :align, type: String
  
  has_mongoid_attached_file :picture,
    :path           => ':rails_root/public/paperclip/:attachment/:id/:style.:extension',
    :url           => '/paperclip/:attachment/:id/:style.:extension', #OMG!
    :storage => :filesystem,
    :styles => {
      :original => ['', :jpg],
      :small    => ['200x200#',   :jpg], 
      :medium   => ['400x400#',    :jpg],
      :large    => ['1024x768>',   :jpg]
    },
    :convert_options => { :all => '-background white -flatten +matte' }

  attr_accessible :picture, :name, :description, :color, :align

end
