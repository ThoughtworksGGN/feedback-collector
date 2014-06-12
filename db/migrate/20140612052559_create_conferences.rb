class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :name
      t.timestamp :start
      t.timestamp :end
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
