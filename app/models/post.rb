class Post < ActiveRecord::Base

	

	validates :title, presence: true

	belongs_to :entrepreneur

	belongs_to :categorie
	
	has_attached_file :image, :styles => { :frise => "1000x300" }
	
	has_many :partenaires
	accepts_nested_attributes_for :partenaires,
			:allow_destroy => true

	has_many :vidposts
	accepts_nested_attributes_for :vidposts,
			:allow_destroy => true		

	has_attached_file :calendar

	#validates_attachment_presence :image
	validates_attachment_size :image, :less_than => 10.megabytes

end
