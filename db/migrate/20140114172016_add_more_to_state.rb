class AddMoreToState < ActiveRecord::Migration
  def change
  	add_column :states, :h1sub1,        :string
  	add_column :states, :h1sub1section, :string
  	add_column :states, :h1sub2,        :string
  	add_column :states, :h1sub2section, :string
  	add_column :states, :h1sub3,        :string
  	add_column :states, :h1sub3section, :string
  	add_column :states, :h1sub4,        :string
  	add_column :states, :h1sub4section, :string
  	add_column :states, :h1sub5,        :string
  	add_column :states, :h1sub5section, :string
  	add_column :states, :h1sub6,        :string
  	add_column :states, :h1sub6section, :string
  	add_column :states, :hlocations,    :string
  	add_column :states, :h3, :string
  	add_column :states, :h3section, :string
  end
end
