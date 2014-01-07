class City < ActiveRecord::Base
  belongs_to :state
  has_many :locations
  attr_accessible :name, :phone, :slug, :state_id, :btc_title, :btc_meta, :btc_h1, :btc_h1section, :btc_h2, :btc_h2section, :btc_h3a, :btc_h3asection, :btc_h3b, :btc_h3bsection, :btc_h3c, :btc_h3csection, :std_title, :std_meta, :std_h1, :std_h1section, :std_h2, :std_h2section, :std_h3a, :std_h3asection, :std_h3b, :std_h3bsection, :std_h3c, :std_h3csection, :population, :liver_num, :kidney_num, :prostate_num, :stroke_num, :all_cancers_num, :coronary_num, :diabetes_num, :total_d_num, :std_stats
  validates :slug, uniqueness: false, presence: true
  before_validation :generate_slug

  def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
      cityhash = row.to_hash
      state_id_num = State.find_by_abbr(row['state']).id
      cityhash = cityhash.merge('state_id' => state_id_num.to_i)
      City.create! cityhash.slice(*accessible_attributes)
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
      all.each do |city|
        csv << city.attributes.values_at(*column_names)
      end
    end
  end

end
