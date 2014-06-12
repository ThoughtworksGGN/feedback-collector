class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :name
      t.string :description
      t.timestamp :start
      t.timestamp :end
      t.number :conference_id
      t.string :presenter

      t.timestamps
    end
  end
end
