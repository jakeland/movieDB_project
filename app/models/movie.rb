class Movie < ApplicationRecord
belongs_to :admin

has_many :reviews

  has_attached_file :image, styles: { medium: "400x600#"} #, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  #has_many :reviews,:rating
  
end
