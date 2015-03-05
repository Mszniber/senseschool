class Entrepreneur < ActiveRecord::Base
	

	
	has_many :posts
	has_many :vidents, :dependent => :destroy
	accepts_nested_attributes_for :vidents, :reject_if => lambda { |v| v[:link].blank? },
				:allow_destroy => true

	has_many :ent_images, :dependent => :destroy
	accepts_nested_attributes_for :ent_images,
				:allow_destroy => true			


	has_many :taggings
	has_many :tags, through: :taggings

	#def self.tagged_with(name)
  	#	Tag.find_by_name!(name).entrepreneurs
	#end

	#def self.tag_counts
  	#	Tag.select("tags.*, count(taggings.tag_id) as count").
    #	joins(:taggings).group("taggings.tag_id")
	#end

	#def tag_list
  	#	tags.map(&:name).join(", ")
	#end

	#def tag_list=(names)
  	#	self.tags = names.split(",").map do |n|
    #	Tag.where(name: n.strip).first_or_create!
  	#end
	#end
end
