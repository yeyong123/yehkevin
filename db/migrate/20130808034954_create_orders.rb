class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone
      t.string :pay_type

      t.timestamps
    end
  end
end
