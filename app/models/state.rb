class State < ActiveRecord::Base
  has_many :cities
  has_many :locations
  attr_accessible :abbr, :name, :slug, :title, :meta, :h1, :h1section, :h2, :h2section
  validates :slug, uniqueness: true, presence: true
  before_validation :generate_slug

  def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
  		State.create! row.to_hash.slice(*accessible_attributes)
    end
  end

  def to_param
    slug 
  end

  def generate_slug
    self.slug ||= name.parameterize
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |state|
        csv << state.attributes.values_at(*column_names)
      end
    end
  end

end
