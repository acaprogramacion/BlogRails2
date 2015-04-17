class CreateMeets < ActiveRecord::Migration
  def change
    create_table :meets do |t|
      t.text :subject
      t.date :meeting
      t.boolean :status
      t.integer :user_id

      t.timestamps
    end
  end
end
