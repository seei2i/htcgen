class Location < ActiveRecord::Base
  belongs_to :city
  belongs_to :state
  attr_accessible :address, :hours, :name, :weblink, :zip, :latitude, :longitude, :state_id, :city_id, :slug
  validates :slug, uniqueness: true, presence: true
  before_validation :generate_slug

  def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
      locationhash = row.to_hash
      state_id_num = State.find_by_abbr(row['state']).id
      city_id_num = City.find_by_name(row['city']).id
      locationhash = locationhash.merge('state_id' => state_id_num.to_i).merge('city_id' => city_id_num.to_i)
      Location.create! locationhash.slice(*accessible_attributes)
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
      all.each do |location|
        csv << location.attributes.values_at(*column_names)
      end
    end
  end
end
