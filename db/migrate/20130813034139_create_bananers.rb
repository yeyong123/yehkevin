class CreateBananers < ActiveRecord::Migration
  def change
    create_table :bananers do |t|
      t.string :image
      t.text :describe
      t.string :button
      t.string :url

      t.timestamps
    end
  end
end
