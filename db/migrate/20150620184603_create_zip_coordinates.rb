class CreateZipCoordinates < ActiveRecord::Migration
  def change
    create_table :zip_coordinates do |t|

      t.timestamps
    end
  end
end
