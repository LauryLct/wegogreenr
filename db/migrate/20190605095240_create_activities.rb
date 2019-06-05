class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :category
      t.string :name
      t.text :description
      t.string :street
      t.string :zipcode
      t.string :city
      t.float :latitude
      t.float :longitude
      t.date :starting_date
      t.date :ending_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
