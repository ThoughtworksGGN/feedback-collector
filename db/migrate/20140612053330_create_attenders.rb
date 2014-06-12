class CreateAttenders < ActiveRecord::Migration
  def change
    create_table :attenders do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :company

      t.timestamps
    end
  end
end
