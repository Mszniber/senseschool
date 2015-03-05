class EntImage < ActiveRecord::Base
	belongs_to :entrepreneur
	has_attached_file :image, :styles => { :icone => "100x100>" }
end
