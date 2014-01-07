class AddMorestuffToCities < ActiveRecord::Migration
  def change
  	add_column :cities, :std_stats,     :text
  end
end
