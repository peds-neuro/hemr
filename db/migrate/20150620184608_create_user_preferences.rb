class CreateUserPreferences < ActiveRecord::Migration
  def change
    create_table :user_preferences do |t|

      t.timestamps
    end
  end
end
