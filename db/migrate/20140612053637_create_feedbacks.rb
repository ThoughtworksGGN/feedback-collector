class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.number :talk_id
      t.number :attender_id
      t.string :notes
      t.number :rating

      t.timestamps
    end
  end
end
