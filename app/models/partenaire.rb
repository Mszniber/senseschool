class Partenaire < ActiveRecord::Base

	belongs_to :post

	has_attached_file :image, :styles => { :icone => "100x100>" }

	#validates_attachment_presence :image
	validates_attachment_size :image, :less_than => 5.megabytes
end
