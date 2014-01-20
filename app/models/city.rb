class City < ActiveRecord::Base
  belongs_to :state
  has_many :locations
  attr_accessible :name, :phone, :slug, :state_id, :btc_title, :btc_meta, :population, :btc_h1, :btc_h2, :btc_h3, :btc_h3sub1, :btc_h3sub1link, :btc_h3sub2, :btc_h3sub2link, :btc_h3sub3, :btc_h3sub3link, :btc_h3sub4, :btc_h3sub4link, :btc_h3sub5, :btc_h3sub5link, :btc_h3sub6, :btc_h3sub6link, :btc_h3sub7, :btc_h3sub7link, :btc_h3sub8, :btc_h3sub8link, :btc_h3sub9, :btc_h3sub9link, :btc_h3sub10, :btc_h3sub10link, :btc_h4, :btc_h4sub1, :btc_h4sub1section, :btc_h4sub2, :btc_h4sub2section, :btc_h4sub3, :btc_h4sub3section, :btc_h4sub4, :btc_h4sub4section, :btc_h4sub5, :btc_h4sub5section, :btc_h4sub6, :btc_h4sub6section, :btc_h5, :btc_h5section, :btc_h6, :btc_h6sub1, :btc_h6sub1link, :btc_h6sub1section, :btc_h6sub2, :btc_h6sub2link, :btc_h6sub2section, :btc_h6sub3, :btc_h6sub3link, :btc_h6sub3section, :btc_h6sub4, :btc_h6sub4link, :btc_h6sub4section, :btc_h6sub5, :btc_h6sub5link, :btc_h6sub5section, :btc_h6sub6, :btc_h6sub6link, :btc_h6sub6section, :btc_h6sub7, :btc_h6sub7link, :btc_h6sub7section, :btc_h6sub8, :btc_h6sub8link, :btc_h6sub8section, :btc_h6sub9, :btc_h6sub9link, :btc_h6sub9section, :btc_h6sub10, :btc_h6sub10link, :btc_h6sub10section, :btc_h7, :btc_h7section, :btc_h7tablel1, :btc_h7tabler1, :btc_h7tablel2, :btc_h7tabler2, :btc_h7tablel3, :btc_h7tabler3, :btc_h7tablel4, :btc_h7tabler4, :btc_h7tablel5, :btc_h7tabler5, :btc_h7tablel6, :btc_h7tabler6, :btc_h7tablel7, :btc_h7tabler7, :btc_h7tablel8, :btc_h7tabler8, :btc_h7tablel9, :btc_h7tabler9, :btc_h7tablel10, :btc_h7tabler10, :btc_h7tablel11, :btc_h7tabler11, :btc_h7tablel12, :btc_h7tabler12, :btc_h7tablel13, :btc_h7tabler13, :btc_h7tablel14, :btc_h7tabler14, :btc_h7tablel15, :btc_h7tabler15, :btc_h7tablel16, :btc_h7tabler16, :btc_h7tablel17, :btc_h7tabler17, :btc_h7tablel18, :btc_h7tabler18, :btc_h7tablel19, :btc_h7tabler19, :btc_h7tablel20, :btc_h7tabler20, :btc_h7footer, :std_title, :std_meta, :std_h1, :std_h2, :std_h3, :std_h3sub1, :std_h3sub1link, :std_h3sub2, :std_h3sub2link, :std_h3sub3, :std_h3sub3link, :std_h3sub4, :std_h3sub4link, :std_h3sub5, :std_h3sub5link, :std_h3sub6, :std_h3sub6link, :std_h3sub7, :std_h3sub7link, :std_h3sub8, :std_h3sub8link, :std_h3sub9, :std_h3sub9link, :std_h3sub10, :std_h3sub10link, :std_h4, :std_h4sub1, :std_h4sub1section, :std_h4sub2, :std_h4sub2section, :std_h4sub3, :std_h4sub3section, :std_h4sub4, :std_h4sub4section, :std_h4sub5, :std_h4sub5section, :std_h4sub6, :std_h4sub6section, :std_h5, :std_h5section, :std_h6, :std_h6sub1, :std_h6sub1link, :std_h6sub1section, :std_h6sub2, :std_h6sub2link, :std_h6sub2section, :std_h6sub3, :std_h6sub3link, :std_h6sub3section, :std_h6sub4, :std_h6sub4link, :std_h6sub4section, :std_h6sub5, :std_h6sub5link, :std_h6sub5section, :std_h6sub6, :std_h6sub6link, :std_h6sub6section, :std_h6sub7, :std_h6sub7link, :std_h6sub7section, :std_h6sub8, :std_h6sub8link, :std_h6sub8section, :std_h6sub9, :std_h6sub9link, :std_h6sub9section, :std_h6sub10, :std_h6sub10link, :std_h6sub10section, :std_h7, :std_h7section, :std_h7tablel1, :std_h7tabler1, :std_h7tablel2, :std_h7tabler2, :std_h7tablel3, :std_h7tabler3, :std_h7tablel4, :std_h7tabler4, :std_h7tablel5, :std_h7tabler5, :std_h7tablel6, :std_h7tabler6, :std_h7tablel7, :std_h7tabler7, :std_h7tablel8, :std_h7tabler8, :std_h7tablel9, :std_h7tabler9, :std_h7tablel10, :std_h7tabler10, :std_h7tablel11, :std_h7tabler11, :std_h7tablel12, :std_h7tabler12, :std_h7tablel13, :std_h7tabler13, :std_h7tablel14, :std_h7tabler14, :std_h7tablel15, :std_h7tabler15, :std_h7tablel16, :std_h7tabler16, :std_h7tablel17, :std_h7tabler17, :std_h7tablel18, :std_h7tabler18, :std_h7tablel19, :std_h7tabler19, :std_h7tablel20, :std_h7tabler20, :std_h7footer
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
