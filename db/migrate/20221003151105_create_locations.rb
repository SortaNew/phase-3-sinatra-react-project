class CreateLocations < ActiveRecord::Migration[6.1]
  def change
      create_table :locations do |t|
        t.string :location_name
        t.string :address
        t.string :image_Url
        t.string :category
      end
  end
end
