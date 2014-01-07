class AddStuffToState < ActiveRecord::Migration
  def change
  	add_column :states, :population,     :string
  end
end
