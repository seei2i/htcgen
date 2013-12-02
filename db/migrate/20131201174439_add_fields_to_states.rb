class AddFieldsToStates < ActiveRecord::Migration
  def change
  	add_column :states, :title, :string
  	add_column :states, :meta, :string
  	add_column :states, :h1, :string
  	add_column :states, :h1section, :text
  	add_column :states, :h2, :string
  	add_column :states, :h2section, :text
  end
end
