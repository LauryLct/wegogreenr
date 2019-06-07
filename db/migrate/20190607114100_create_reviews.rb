class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rate
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
