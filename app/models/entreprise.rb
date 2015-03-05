class Entreprise < ActiveRecord::Base

	has_attached_file :image, :styles => { :icone => "125x125>" }

	validates_attachment_size :image, :less_than => 5.megabytes

	
end
