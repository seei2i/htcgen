class AddStuffToCities < ActiveRecord::Migration
  def change
  	add_column :cities, :population,     :string
  	add_column :cities, :liver_num,      :string
  	add_column :cities, :kidney_num,     :string
  	add_column :cities, :prostate_num,   :string
  	add_column :cities, :stroke_num,     :string
  	add_column :cities, :all_cancers_num,:string
  	add_column :cities, :coronary_num,   :string
  	add_column :cities, :diabetes_num,   :string
  	add_column :cities, :total_d_num,    :string
  end
end
