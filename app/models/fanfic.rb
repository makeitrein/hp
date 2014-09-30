class Fanfic < ActiveRecord::Base

  WORD_COUNT_OPTIONS = ["under 1k", "under 5k", "over 1k", "over 5k","over 10k","over 20k","over 40k","over 60k","over 100k"]
  RELATIONSHIP_OPTIONS = ["Hetero", "Slash", "FemSlash"]
  MPAA_OPTIONS = ["G", "PG", "PG-13", "R", "NC-17"]

  has_many :taggings
  has_many :tags, through: :taggings

  has_many :fanfic_characters
  has_many :characters, through: :fanfic_characters

  belongs_to :crossover


  # validates :word_count, :inclusion => {:in => WORD_COUNT_OPTIONS}

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
