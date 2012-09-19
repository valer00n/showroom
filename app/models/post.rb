class Post
  include Mongoid::Document
  field :title, type: String
  field :teaser, type: String
  field :content, type: String
end
