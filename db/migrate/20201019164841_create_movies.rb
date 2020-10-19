class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.string :url
      t.integer :tag_id
    
      t.timestamps
    end
  end
end
