class AddFieldsToStates < ActiveRecord::Migration
  def change
  	add_column :states, :title,          :string
  	add_column :states, :meta,           :string
  	add_column :states, :population,     :string
  	add_column :states, :h1,             :string
  	add_column :states, :h1section,      :text
  	add_column :states, :h1sub1,         :string
  	add_column :states, :h1sub1section,  :text
  	add_column :states, :h1sub2,         :string
  	add_column :states, :h1sub2section,  :text
  	add_column :states, :h1sub3,         :string
  	add_column :states, :h1sub3section,  :text
  	add_column :states, :h1sub4,         :string
  	add_column :states, :h1sub4section,  :text
  	add_column :states, :h1sub5,         :string
  	add_column :states, :h1sub5section,  :text
  	add_column :states, :h1sub6,         :string
  	add_column :states, :h1sub6section,  :text
  	add_column :states, :hlocations,     :string
  	add_column :states, :h2,             :string
  	add_column :states, :h2section,      :text
  	add_column :states, :h3,             :string
  	add_column :states, :h3section,      :text
  end
end
