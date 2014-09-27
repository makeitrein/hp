class Fanfic < ActiveRecord::Base

  enum mpaa: [:assign_me, :g, :pg, :pg_13, :r, :nc_17]
  enum relationship_type: [:hetero, :slash, :fem_slash]







  has_many :taggings
  has_many :tags, through: :taggings

  def self.tagged_with(name)
    Tag.find_by_name!(name).fanfics
  end

  def self.tag_counts
    Tag.select("tags.*, count(taggings.tag_id) as count").__id__
    joins(:taggings).group("taggings.tag_id")
  end

  def tag_list
    tags.map(&:name).join(", ")
  end

  def tag_list=(names)
    self.tags = names.split(",").map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end

end
