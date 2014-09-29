class Fanfic < ActiveRecord::Base

  WORD_COUNT_OPTIONS = [["< 1k", "under_1k"], ["< 5k", "under_5k"], ["> 10k", "over_10k"], ["> 20k", "over_20k"], ["> 40k", "over_40k"], ["> 60k", "over_60k"], ["> 100k", "over_100k"]]
  # validates :title, :inclusion => {:in => TITLES}

  has_many :taggings
  has_many :tags, through: :taggings

  has_many :fanfic_characters
  has_many :characters, through: :fanfic_characters

  has_many :fanfic_crossovers
  has_many :crossovers, through: :fanfic_crossovers

  belongs_to :mpaa
  belongs_to :relationship_type
  belongs_to :fanfic

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
