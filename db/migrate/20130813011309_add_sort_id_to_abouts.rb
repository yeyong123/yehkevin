class AddSortIdToAbouts < ActiveRecord::Migration
  def change
    add_column :abouts, :sort_id, :integer
  end
end
