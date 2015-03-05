class Temoin < ActiveRecord::Base

	has_attached_file :image, :styles => { :icone => "100x100>" }
	has_attached_file :imagecole, :styles => { :icone => "75x75>" }

	#validates_attachment_presence :image
	validates_attachment_size :image, :less_than => 5.megabytes

end
