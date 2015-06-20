class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.references :patient, index: true
      t.references :user, index: true
      t.string :source_author
      t.string :source_institution
      t.string :department
      t.string :type
      t.string :title
      t.text :body
      t.json :structured_data
      t.string :default_view
      t.string :source_file_filename
      t.string :source_file_content_type
      t.integer :source_file_file_size
      t.datetime :source_file_updated_at

      t.timestamps
    end
  end
end
