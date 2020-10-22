class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.belongs_to :movie
      t.belongs_to :profile
    end
  end
end
