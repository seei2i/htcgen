class AddFieldsToCities < ActiveRecord::Migration
  def change
  	add_column :cities, :btc_title, :string
    add_column :cities, :btc_meta, :string
  	add_column :cities, :btc_h1, :string
  	add_column :cities, :btc_h1section, :text
  	add_column :cities, :btc_h2, :string
  	add_column :cities, :btc_h2section, :text
    add_column :cities, :btc_h3a, :string
    add_column :cities, :btc_h3asection, :text
    add_column :cities, :btc_h3b, :string
    add_column :cities, :btc_h3bsection, :text
    add_column :cities, :btc_h3c, :string
    add_column :cities, :btc_h3csection, :text
    add_column :cities, :std_title, :string
    add_column :cities, :std_meta, :string
    add_column :cities, :std_h1, :string
    add_column :cities, :std_h1section, :text
    add_column :cities, :std_h2, :string
    add_column :cities, :std_h2section, :text
    add_column :cities, :std_h3a, :string
    add_column :cities, :std_h3asection, :text
    add_column :cities, :std_h3b, :string
    add_column :cities, :std_h3bsection, :text
    add_column :cities, :std_h3c, :string
    add_column :cities, :std_h3csection, :text
  end
end


