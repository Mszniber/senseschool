class Actu < ActiveRecord::Base

	has_many :liens
	accepts_nested_attributes_for :liens, :reject_if => lambda { |l| l[:link].blank? },
			:allow_destroy => true

	has_many :actu_images
	accepts_nested_attributes_for :actu_images,
			:allow_destroy => true	
			
	has_many :videos
	accepts_nested_attributes_for :videos, :reject_if => lambda { |v| v[:link].blank? },
			:allow_destroy => true			


			
end
